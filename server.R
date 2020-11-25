library(shiny)
library(tidyverse)
library(viridis)
library(ggtext)
library(paletteer)

server <- function(input, output) {
  
  output$plot <- renderPlot({
    LA <- input$LA
    plotweek <- input$plotweek
    plotcause <- input$plotcause
    
    plotdata <- data %>% 
      filter(name==LA & (regweek==plotweek | regweek==plotweek-1) & cause==plotcause) %>% 
      group_by(week) %>% 
      mutate(newregs=case_when(
        week==plotweek ~ deaths,
        regweek!=plotweek ~ deaths,
        TRUE ~ deaths-lag(deaths, 1, order_by=regweek)),
        regdate=if_else(regweek==plotweek, "newregs", "lastweek"),
        regdate=factor(regdate, levels=c("newregs", "lastweek")))
    
    #Calculate trends in lag over time
    lagdata <- data %>% 
      filter(name==LA) %>% 
      group_by(code, name, cause, week) %>% 
      mutate(newregs=case_when(
        regweek==week ~ deaths,
        regweek>min(regweek) ~ deaths-lag(deaths, 1, order_by=regweek))) %>% 
      mutate(lag=regweek-week, wgtdeaths=lag*newregs) %>% 
      group_by(code, name, cause, regweek) %>% 
      summarise(meanlag=sum(wgtdeaths)/sum(newregs))
    
    labeldata <- plotdata %>% 
      filter(regdate=="newregs") %>% 
      mutate(lag=plotweek-week,
             newregs=if_else(newregs==0, NA_integer_, newregs))
    
    meanlag <- labeldata %>% 
      ungroup() %>% 
      mutate(wgtdeaths=lag*newregs) %>% 
      summarise(meanlag=sum(wgtdeaths, na.rm=TRUE)/sum(newregs, na.rm=TRUE))
    
    if (input$plottype == 1){
      p <- ggplot(plotdata)+
        geom_col(aes(x=week, y=newregs, fill=regdate), show.legend=FALSE)+
        geom_text(data=labeldata, aes(x=week, y=deaths, label=newregs), vjust=-0.5, size=rel(3), colour="#0072c2")+
        scale_fill_manual(values=c("#0072c2", "#ffa73c"), name="Date of registration", 
                          labels=c(paste0("Week ", plotweek), paste0("Before week ", plotweek)))+
        scale_x_continuous(name="Week of death (occurrence)")+
        scale_y_continuous(name="Number of deaths")+
        annotate("text", x=plotweek-10, y=max(plotdata$deaths)*0.9, 
                 label=paste0("Average registration delay: ", round(meanlag[,1], 2), " weeks"),
                 fontface=2)+
        theme_classic()+
        theme(plot.subtitle=element_markdown(), plot.title=element_text(face="bold", size=rel(2)))+
        labs(title=paste0("Delays in deaths registrations in ", LA),
             subtitle=paste0("Week of occurence for <span style='color:#0072c2;'>deaths registered in week ", 
                             plotweek, "</span> from ", plotcause,
                             " compared to <span style='color:#ffa73c;'>those registered previously.</span><br>Only deaths occuring in 2020 are included in the calculation of the average delay."),
             caption="Data from ONS | Plot by @VictimOfMaths")
    }
    
    if (input$plottype == 2){
     p <- lagdata %>% 
       filter(regweek>16) %>% 
       ggplot()+
       geom_line(aes(x=regweek, y=meanlag, colour=cause))+
       scale_x_continuous(name="Week of death registration")+
       scale_y_continuous(limits=c(0,NA), name="Average registration delay (weeks)")+
       scale_colour_paletteer_d("wesanderson::Darjeeling1", name="Cause of death")+
       theme_classic()+
       theme(plot.title=element_text(face="bold", size=rel(2)))+
       labs(title=paste0("Delays in deaths registrations in ", LA),
            subtitle="Mean number of weeks elapsed between death occurring and being registered for COVID and non-COVID deaths.\nDeaths occuring in previous years are not included in these calculations and figures therefore represent an underestimate of the true delay.",
            caption="Data from ONS | Plot by @VictimOfMaths") 
    }
    
    if (input$plottype == 3){
      p <- data %>% 
        filter(name==LA & cause==plotcause) %>% 
        group_by(code, name, cause, week) %>% 
        mutate(newregs=case_when(
          regweek==week ~ deaths,
          regweek>min(regweek) ~ deaths-lag(deaths, 1, order_by=regweek))) %>% 
        filter(week>=16) %>% 
        ggplot()+
        geom_col(aes(x=week, y=newregs, fill=as.factor(regweek)))+
        scale_fill_viridis(discrete=TRUE, name="Week of registration", direction=-1)+
        scale_x_continuous(name="Week of death (occurrence)")+
        scale_y_continuous(name="Number of deaths")+
        theme_classic()+
        theme(plot.title=element_text(face="bold", size=rel(2)))+
        labs(title=paste0("Delays in deaths registrations in ", LA),
             subtitle=paste0("Week of occurrence for deaths from ", plotcause, " by week or registration.\nDeaths which occurred prior to week 16 (18th April) are excluded."),
             caption="Data from ONS | Plot by @VictimOfMaths")
    }
    p     
  })
  
}
      
      
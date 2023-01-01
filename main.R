


setwd("D:\\1_Coding\\1_Coding_Theory\\Udemy\\R_Programming\\Section_6\\Homework")

movies <- read.csv("FilmData.csv")

head(movies)

library(ggplot2)

 

mydf <- movies[c(movies$Genre == "action" | movies$Genre == "adventure"|movies$Genre == "animation"|
                movies$Genre == "comedy"|movies$Genre == "drama") & 
                 c(movies$Studio == "Buena Vista Studios"| movies$Studio == "Fox"|
                 movies$Studio == "paramount Pictures" | movies$Studio == "Sony"|
                 movies$Studio == "Universal" | movies$Studio == "WB"),
                 
               ]

colnames(mydf)[8] <- "Budget"
 
head(mydf)
tail(mydf)

v <- ggplot(data = mydf, aes( y = Gross.US, x = Genre))

b <-v  +  geom_jitter(aes( size = Budget,color = Studio)) + geom_boxplot(size = 1.2, alpha = 0.5) 


b + xlab("Genre") + 
  ylab("Gross%US") +
theme(axis.title.x = element_text(color = "DarkBlue", size = 15) , 
      axis.title.y = element_text(color = "DarkBlue", size = 15),
      legend.title = element_text(size = 13),
      legend.text  = element_text(size = 13),
      
)
  
         
        
  




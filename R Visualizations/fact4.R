library(ggplot2)

#create vectors
category <- c("Budgeted Funds", "Funds Spent")
figures <- c(12.83, 11.04)
counties <- c("Murang'a", "Trans Nzoia", "Makueni", "Machakos","Turkana", "Kwale")
spending <- c(0,0,0,0,0,150)

overall.data <- data.frame(category, figures)
counties.data <- data.frame(counties, spending)

# Basic barplot
fact4 <- ggplot(overall.data, aes(x=category, y=figures, label=sprintf("%0.2f", round(figures, digits = 4)))) +
  geom_bar(stat="identity", width = 0.3, fill="#0066A5") +
  geom_text(aes(label=figures), vjust=0.4, hjust=1.2, color="white", size=3.5)+
  labs(title = "Travel funds in 2015/16 FY", y ="Funds in Billions of Kenya Shillings", x="") +
  theme_light() +
  coord_flip()

fact4

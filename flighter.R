library(ggplot)
library(lubridate)
library(readr)

df <- read_excel("C:/Users/12083/Desktop/instructions/datasetd.xlsx")
df %>%
  select(date,Location) %>%
  filter(date >= as.Date("2017-01-05") & date <= as.Date("2018-01-10"))%>%
  group_by(Location) %>%
  summarise(count=n())
dput(df)

g <- ggplot(df, aes(Location))
g + geom_bar()


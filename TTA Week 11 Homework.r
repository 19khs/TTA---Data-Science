#1
data("PlantGrowth") #Get Date
head(PlantGrowth)   #Peak at data

f <- ggplot(PlantGrowth, aes(x=group, y=weight, color= group)) + 
  geom_boxplot(outlier.color = "red", #Highlight the outlier
  )
f

ClientPrimary = "#12B2BA"

f <-f + labs(title = "A comparison of proprietary chemicals on plant growth\n", 
             title.colour = "#12B2BA",
             x = "Test Group", #Relabel X axis
             y = "Plant weight" #Relabel y axis
) +
  scale_color_manual(values=c("grey", "#b30000", "#00b300")) #Add custom RAG colour


f <-f + theme(plot.title = element_text(size = 15, face = "bold", color =ClientPrimary ),
              axis.title.x=element_text(colour=ClientPrimary),
              axis.title.y=element_text(colour=ClientPrimary),              
              axis.text.x=element_text(colour=ClientPrimary),
              axis.text.y=element_text(colour=ClientPrimary)) +
  scale_x_discrete(labels=c("Control","Test 1","Test 2"))  #Relabel X axis group to match legend
f  

f <- f  + theme(legend.position="none") 
f

a <- c(1,2,3,4,5)                 #Vector - no type control
b <- as.integer(c(10,8,6,4,2))    #Vector as integer
c <- sample(1:10, 5, replace=F)   #Vector as random integer
d <- data.frame(a,b,c)            #Combine vectors to dataframe
print(d)                          #Print dataframe

library("scatterplot3d")            # load
scatterplot3d(x=d$a, xlab = "A: 5 fixed numbers",
              y=d$b, ylab = "B: 5 fixed integers",
              z=d$c, zlab = "C: 5 random integers",
              main="Plotting 3 integer vars",
              pch = 16, color="Red")


#visualization of correlations as alternate option
library(GGally)
ggcorr(d, method = c("everything", "pearson"))


#2. 
df2 <- data.frame(
  Name = c("John","Jane","James","Judy","Jim"),
  Age = c(18,22,25,65,12),
  Role = c("Analyst","Reporting","QA","PMO","Lead"),
  LoS = c(2,6,3,6,2),
  stringsAsFactors = FALSE
  )
df2

#3.
library(ggplot2)


x3 = seq(from = 1, to = 20) #Sequence x
y3 = x3^2                   #Create y as x^2
df3 <- data.frame(x3,y3)    #combine to dataframe


ggplot(data=df3, aes(x=x3, y=y3)) +
  geom_line()+
  geom_point()+
  labs(
    title="Plotting x to power of 2 for the values 1 to 20",
    x="Sequentional numbers 1 to 20",
    y="X^2")

#4. 
Subject = c("Maths","Science","IT","History","Art")
PassCount <- sample(1:100, 5, replace=F)
barplot(PassCount,names.arg=Subject,xlab="Subject",ylab="Count of passes",main="Count of students passing per subject")

#5. 
my.name <- readline(prompt="Enter name: ")

my.age <- as.integer(readline(prompt="Enter age: "))

print(paste("Hi,", my.name, "you are", my.age, "years old."))

#6. 
x6 <- seq(from = 20, to = 50)
MeanX = mean(x6)
SumX = sum(x6)
MeanX
SumX

#7. 
x7 <- sample(-50:50, 10, replace=F)
x7

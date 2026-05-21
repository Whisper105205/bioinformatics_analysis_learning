age<-c(1,3,5,2,11,9,3,9,12,3)
weight<-c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)
infant_data<-data.frame(age,weight)
mean(weight)
sd(weight)
cor(age,weight)
library(ggplot2)
p1<-ggplot(infant_data,aes(age,weight))+
geom_point(alpha=0.7,size=1.5,color="blue")+
geom_smooth(method="loess",se=FALSE)+
theme_bw()
p1

plot(age,weight)

height_cm<-c(52,58,60,55,70.8,68.8,56.7,69.4,76.2,57.6)
mean(height_cm)
sd(height_cm)
cor(age,height_cm)
cor(height_cm,weight)
plot(age,height_cm)
plot(height_cm,weight)
sd(height_cm,na.rm=TRUE)
sd(height_cm,na.rm=FALSE)

data(ggplot2)
data()
getwd()
ls()
load(p1)
save.image(p1)
save.image("p1")
load("p1")
getwd()

lm(mpg~wt, data=mtcars)
lmfit<-lm(mpg~wt,data=mtcars)
summary(lmfit)
plot(lmfit)
cook<-cooks.distance(lmfit)
p2<-plot(lmfit)
p2

?cooks.distance

help.start()
help(package="vcd")
library(vcd)
Arthritis
example(Arthritis)

library(ggplot2)
help(package="ggplot2")

example(mtcars)

a<-c(12,13,18,10,14)
b<-c("Good","job")
c<-c(TRUE,TRUE,FALSE)
a[3]
a[c(1,4,5)]
a[1:3]
b[1]
c[c(2,3)]

y1<-matrix(1:20,nrow=5,ncol=6)
y1
y2<-matrix(1:20,nrow=5,ncol=4,byrow=TRUE)
y2
cells<-c(1,26,24,68)
rnames<-c("R1","R2")
cnames<-c("C1","C2")
y3<-matrix(cells,nrow=2,ncol=2,byrow=TRUE,dimnames=list(rnames,cnames))
y3
cells<-c(1,26,24,68)
rnames<-c("R1","R2")
cnames<-c("C1","C2")
y4<-matrix(cells,nrow=2,ncol=2,byrow=TRUE,dimnames=list(rnames,cnames))
y3

x<-matrix(1:20,nrow=2,byrow=TRUE)
x
x[2,]
x[1,2]
x[1,c(2,3)]

dim1<-c("A1","A2")
dim2<-c("B1","B2","B3")
dim3<-c("C1","C2","C3","C4","C5")
z<-array(1:30,c(2,3,5),dimnames=list(dim1,dim2,dim3))
z

n1<-c("A1","A2","A3")
n2<-c("x","y")
n<-c(11,22,33,44,55,66)
z2<-array(n,c(3,2),dimnames=list(n1,n2))
z2
z2[2,2]

patientID<-c(1,2,3,4)
age<-C(25,34,28,52)
diabetes<-c("Type1","Type2","Type1","Type1")
status<-c("Poor","Improved","Excellent","Poor")
patientdata<-data.frame(patientID,age,diabetes,status)
patientdata
levels(diabetes)
levels(status)

patientID<-c(1,2,3,4)
age<-C(25,34,28,52)
diabetes<-factor(c("Type1","Type2","Type1","Type1"))
status<-factor(c("Poor","Improved","Excellent","Poor"),
               ordered=TRUE,
               levels=c("Poor","Improved","Excellent"))
patientdata<-data.frame(patientID,age,diabetes,status)
patientdata

names<-c("Amy","Linda","Franklin")
gender<-factor(c("female","female","male"))
mathgrades<-c(98,95,95)
englishgrades<-c(96,97,90)
grades<-data.frame(names,gender,mathgrades,englishgrades)
grades
grades[1:2]
grades$mathgrades
table(grades$mathgrades,grades$englishgrades)
with(grades,{table(mathgrades,englishgrades)})

with(mtcars,{summary(mpg)
  plot(mpg,disp)
  plot(mpg,wt)})

with(mtcars,{
  stats<-summary(mpg)
  stats
  plot(mpg,disp)
  plot(mpg,wt)})
stats
with(mtcars,{
  stats<<-summary(mpg)
  stats
  plot(mpg,disp)
  plot(mpg,wt)})
stats

with(mtcars,{
  print(stats<-summary(mpg))
  plot(mpg,disp)
  plot(mpg,wt)})

with(grades,{mean(mathgrades)
  sd(englishgrades)
  plot(names,mathgrades)})
with(grades,{mean(mathgrades)
  sd(englishgrades)
  })

with(grades,{mean(mathgrades)
  sd(englishgrades)
  factor(names)
  plot(names,mathgrades)})

stu_names<-c("Amy","Linda","Franklin")
gender<-factor(c("female","female","male"))
mathgrades<-c(98,95,95)
englishgrades<-c(96,97,90)
grades<-data.frame(stu_names,gender,mathgrades,englishgrades)
grades
with(grades,{mean(mathgrades)
  sd(englishgrades)
  factor(stu_names)
  plot(stu_names,mathgrades)})

stu_names2<-factor(stu_names)
with(grades,{mean(mathgrades)
  sd(englishgrades)
  plot(stu_names2,mathgrades)})

grades<-data.frame(stu_names,gender,mathgrades,englishgrades,row.names=stu_names)
grades
grades<-data.frame(gender,mathgrades,englishgrades,row.names=stu_names)
grades

gender<-factor(gender)
str(patientdata)
summary(patientdata)

ls()
patientdata
grades
str(grades)
summary(grades)

g<-"A List"
h<-c(25,18,27,35)
j<-matrix(1:10,nrow=5)
k<-c("one","two","three")
mylist<-list(title=g,age=h,j,k)
mylist
mylist[[2:3]]
mylist[["title"]]
mylist[[2,3]]
mylist[[c(2,3)]]
mylist[[2]]

installed.packages("tibble")
library(tibble)
install.packages("tibble")
library(tibble)
mtcars<-as_tibble(mtcars)
mtcars
mtcars[,"mpg"]
mtcars[,"mpg",drop=FALSE]

leadership<-data.frame(manager=c(1,2,3,4,5),
                       date=c("10/24/08","10/28/08","10/1/08","10/12/08","5/1/09"),
                       country=c("US","US","Uk","UK","UK"),
                       gender=c("M","F","F","M","F"),
                       age=c(32,45,25,39,99),
                       q1=c(5,3,3,3,2),
                       q2=c(4,5,5,3,2),
                       q3=c(5,2,5,4,1),
                       q4=c(5,5,5,NA,2),
                       q5=c(5,5,2,NA,1))
leadership
with(leadership,{total_score<<-q1+q2+q3+q4+q5})
total_score
mean_score<-total_score/5
mean_score
leadership<-transform(leadership,total_score=q1+q2+q3+q4+q5,
                      mean_score=(q1+q2+q3+q4+q5)/5)
leadership
leadership$age[leadership$age==99]<-NA
leadership
leadership$agecat[leadership$age>75]<-"Elder"
leadership$agecat[leadership$age>=55&leadership$age<=75]<-"Middle Aged"
leadership$agecat[leadership$age<55]<-"Young"
leadership
leadership<-within(leadership,{agecat<-NA
agecat[age>75]<-"Elder"
agecat[age>=55&age<=75]<"Middle Aged"
agecat[age<55]<-"Young"})
leadership
fix(leadership)
names(leadership[2]<-"testdate")
leadership
names(leadership[6:10]<-c("t1","t2","t3","t4","t5"))
leadeship
is.na(leadership)
is.infinite(leadership)
is.infinite(leadership$age)
is.nan(leadership[2])
leadership
newdata<-na.omit(leadership)
newdata
myformat<-"%m/%d/%y"
leadership$date<-as.Date(leadership$date,myformat)
leadership
ls()
Sys.Date()
date()
today<-Sys.Date()
format(today,format=myformat)
as.Date(today,"%a %d %m %Y")
data()
ls()
today<-Sys.Date()
format(today,format="%B %d %Y")
format(today,format="%b %d %Y")
format(today,format="%m %d %Y")

startdate<-as.Date("2006-11-28")
enddate<-as.Date(today)
days<-enddate-startdate
days
startdate<-as.Date("2007-12-01")
days<-enddate-startdate
days
startdate<-as.Date("2007-01-16")
enddate<-as.Date(today)
days<-enddate-startdate
days
7065-6746
difftime(today,startdate,units="weeks")
difftime(today,startdate,units="months")
difftime(today,startdate,units="secs")
a
is.numeric(a)
is.numeric(y)
y
is.numeric(leadership)
y<-as.character(y)
is.numeric(y)
newdata2<-leadership[oder(leadership$age),]
newdata2
newdata2<-leadership[order(leadership$age),]
newdata2
is.na(newdata2)
newdata2<-na.omit(newdata2)
newdata2
newdata3<-leadership[order(leadership$total_score),]
newdata3
newdata3<-leadership[order(-leadership$total_score),]
newdata3
newdata3<-leadership[order(-leadership$total_score)]
newdata3
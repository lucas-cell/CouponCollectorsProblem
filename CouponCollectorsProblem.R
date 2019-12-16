#Senior Statistic Project(Coupon Collector Problem)
#By Lucas Nieddu

#Below is a simulation for the Coupon Collector Problem. This simulation 
#is geared towards the question, "How many distinct coupons can we expect
#AFTER wee buy k amount of icecreams?"
library("knitr")
knit2html("Desktop/R/Senior_Stat_Project.R")
library("MASS") # imports 
install.packages("segclust2d", repos = "http://cran.us.r-project.org") #import for my piecewise regression line
library("segmented") #imports for my segmented line
#setwd("Desktop/R/") #set my working directing 

#Total number of iterations
samples_taken<-10000

# initializes vectors to store data 
results<-mat.or.vec(samples_taken,1)  
results0<-mat.or.vec(samples_taken,1)
results1<-mat.or.vec(samples_taken,1)
results2<-mat.or.vec(samples_taken,1)
results3<-mat.or.vec(samples_taken,1)
results4<-mat.or.vec(samples_taken,1)
results5<-mat.or.vec(samples_taken,1)
results6<-mat.or.vec(samples_taken,1)
results7<-mat.or.vec(samples_taken,1)
results8<-mat.or.vec(samples_taken,1)
results9<-mat.or.vec(samples_taken,1)
results10<-mat.or.vec(samples_taken,1)
results11<-mat.or.vec(samples_taken,1)  
results12<-mat.or.vec(samples_taken,1)
results13<-mat.or.vec(samples_taken,1)
results14<-mat.or.vec(samples_taken,1)
results15<-mat.or.vec(samples_taken,1)
results16<-mat.or.vec(samples_taken,1)
results17<-mat.or.vec(samples_taken,1)
results18<-mat.or.vec(samples_taken,1)
results19<-mat.or.vec(samples_taken,1)
results20<-mat.or.vec(samples_taken,1)
results21<-mat.or.vec(samples_taken,1)
results22<-mat.or.vec(samples_taken,1)
#vectors to zoom in on the standard deviation (0-2000)
results23<-mat.or.vec(samples_taken,1)  
results24<-mat.or.vec(samples_taken,1)
results25<-mat.or.vec(samples_taken,1)
results26<-mat.or.vec(samples_taken,1)
results27<-mat.or.vec(samples_taken,1)
results28<-mat.or.vec(samples_taken,1)
results29<-mat.or.vec(samples_taken,1)
results30<-mat.or.vec(samples_taken,1)
results31<-mat.or.vec(samples_taken,1)
results32<-mat.or.vec(samples_taken,1)
results33<-mat.or.vec(samples_taken,1)
results34<-mat.or.vec(samples_taken,1)
results35<-mat.or.vec(samples_taken,1)  
results36<-mat.or.vec(samples_taken,1)
results37<-mat.or.vec(samples_taken,1)
results38<-mat.or.vec(samples_taken,1)
results39<-mat.or.vec(samples_taken,1)
results40<-mat.or.vec(samples_taken,1)
results41<-mat.or.vec(samples_taken,1)
results42<-mat.or.vec(samples_taken,1)
results43<-mat.or.vec(samples_taken,1)
results44<-mat.or.vec(samples_taken,1)
results45<-mat.or.vec(samples_taken,1)
results46<-mat.or.vec(samples_taken,1)

#number of distinct coupons (n)
num_distinct_coupons<-1000

# different values of Icecreams bought (number of distinct coupons * (1,2,....,12))
num_icecreams<-num_distinct_coupons*1 # 1000 icecreams
num_icecreams0<-num_distinct_coupons*1.5 #1500 icecreams
num_icecreams1<-num_distinct_coupons*2 # 2000 icecreams
num_icecreams2<-num_distinct_coupons*2.5 #2500 icecreams
num_icecreams3<-num_distinct_coupons*3 # 3000 icecreams
num_icecreams4<-num_distinct_coupons*3.5 #3500 icecreams
num_icecreams5<-num_distinct_coupons*4 # 4000 icecreams
num_icecreams6<-num_distinct_coupons*4.5 # 4500 icecreams
num_icecreams7<-num_distinct_coupons*5 # 5000 icecreams
num_icecreams8<-num_distinct_coupons*5.5 # 5500 icecreams 
num_icecreams9<-num_distinct_coupons*6 # 6000 icecreams
num_icecreams10<-num_distinct_coupons*6.5  # 6500 icecreams
num_icecreams11<-num_distinct_coupons*7 # 7000 icecreams
num_icecreams12<-num_distinct_coupons*7.5 #7500 icecreams
num_icecreams13<-num_distinct_coupons*8 # 8000 icecreams
num_icecreams14<-num_distinct_coupons*8.5 #8500 icecreams
num_icecreams15<-num_distinct_coupons*9 # 9000 icecreams
num_icecreams16<-num_distinct_coupons*9.5 # 9500 icecreams
num_icecreams17<-num_distinct_coupons*10 # 10000 icecreams
num_icecreams18<-num_distinct_coupons*10.5 # 10500 icecreams
num_icecreams19<-num_distinct_coupons*11 # 11000 icecreams
num_icecreams20<-num_distinct_coupons*11.5 # 11500 icecreams
num_icecreams21<-num_distinct_coupons*12 # 12000 icecreams
num_icecreams22<-num_distinct_coupons*12.5 # 12500 icecreams

# for Standard deviation plot
num_icecreams23<-1000
num_icecreams24<-1050
num_icecreams25<-1100
num_icecreams26<-1150
num_icecreams27<-1200
num_icecreams28<-1250
num_icecreams29<-1300
num_icecreams30<-1350
num_icecreams31<-1400
num_icecreams32<-1450 
num_icecreams33<-1500
num_icecreams34<-1550
num_icecreams35<-1600
num_icecreams36<-1650
num_icecreams37<-1700
num_icecreams38<-1750
num_icecreams39<-1800
num_icecreams40<-1850
num_icecreams41<-1900
num_icecreams42<-1915
num_icecreams43<-1930
num_icecreams44<-1945
num_icecreams45<-1952
num_icecreams46<-1959


#fills vectors
numbers<-c(1:num_icecreams)
numbers0<-c(1:num_icecreams0)
numbers1<-c(1:num_icecreams1)
numbers2<-c(1:num_icecreams2)
numbers3<-c(1:num_icecreams3)
numbers4<-c(1:num_icecreams4)
numbers5<-c(1:num_icecreams5)
numbers6<-c(1:num_icecreams6)
numbers7<-c(1:num_icecreams7)
numbers8<-c(1:num_icecreams8)
numbers9<-c(1:num_icecreams9)
numbers10<-c(1:num_icecreams10)
numbers11<-c(1:num_icecreams11)
numbers12<-c(1:num_icecreams12)
numbers13<-c(1:num_icecreams13)
numbers14<-c(1:num_icecreams14)
numbers15<-c(1:num_icecreams15)
numbers16<-c(1:num_icecreams16)
numbers17<-c(1:num_icecreams17)
numbers18<-c(1:num_icecreams18)
numbers19<-c(1:num_icecreams19)
numbers20<-c(1:num_icecreams20)
numbers21<-c(1:num_icecreams21)
numbers22<-c(1:num_icecreams22)

#Standard Deviations plot
numbers23<-c(1:num_icecreams23)
numbers24<-c(1:num_icecreams24)
numbers25<-c(1:num_icecreams25)
numbers26<-c(1:num_icecreams26)
numbers27<-c(1:num_icecreams27)
numbers28<-c(1:num_icecreams28)
numbers29<-c(1:num_icecreams29)
numbers30<-c(1:num_icecreams30)
numbers31<-c(1:num_icecreams31)
numbers32<-c(1:num_icecreams32)
numbers33<-c(1:num_icecreams33)
numbers34<-c(1:num_icecreams34)
numbers35<-c(1:num_icecreams35)
numbers36<-c(1:num_icecreams36)
numbers37<-c(1:num_icecreams37)
numbers38<-c(1:num_icecreams38)
numbers39<-c(1:num_icecreams39)
numbers40<-c(1:num_icecreams40)
numbers41<-c(1:num_icecreams41)
numbers42<-c(1:num_icecreams42)
numbers43<-c(1:num_icecreams43)
numbers44<-c(1:num_icecreams44)
numbers45<-c(1:num_icecreams44)
numbers46<-c(1:num_icecreams45)

#start of simulation
for(i in 1: samples_taken)
{
  
  #Loads data into intial vector, sorts unique values out and places those distinct values in second vector
  initial_sample<-sample(numbers,num_distinct_coupons,replace = TRUE)
  unique_sample<-unique(initial_sample)
  initial_sample0<-sample(numbers0,num_distinct_coupons,replace = TRUE)
  unique_sample0<-unique(initial_sample0)
  initial_sample1<-sample(numbers1,num_distinct_coupons,replace = TRUE)
  unique_sample1<-unique(initial_sample1)
  initial_sample2<-sample(numbers2,num_distinct_coupons,replace = TRUE)
  unique_sample2<-unique(initial_sample2)
  initial_sample3<-sample(numbers3,num_distinct_coupons,replace = TRUE)
  unique_sample3<-unique(initial_sample3)
  initial_sample4<-sample(numbers4,num_distinct_coupons,replace = TRUE)
  unique_sample4<-unique(initial_sample4)
  initial_sample5<-sample(numbers5,num_distinct_coupons,replace = TRUE)
  unique_sample5<-unique(initial_sample5)
  initial_sample6<-sample(numbers6,num_distinct_coupons,replace = TRUE)
  unique_sample6<-unique(initial_sample6)
  initial_sample7<-sample(numbers7,num_distinct_coupons,replace = TRUE)
  unique_sample7<-unique(initial_sample7)
  initial_sample8<-sample(numbers8,num_distinct_coupons,replace = TRUE)
  unique_sample8<-unique(initial_sample8)
  initial_sample9<-sample(numbers9,num_distinct_coupons,replace = TRUE)
  unique_sample9<-unique(initial_sample9)
  initial_sample10<-sample(numbers10,num_distinct_coupons,replace = TRUE)
  unique_sample10<-unique(initial_sample10)
  initial_sample11<-sample(numbers11,num_distinct_coupons,replace = TRUE)
  unique_sample11<-unique(initial_sample11)
  initial_sample12<-sample(numbers12,num_distinct_coupons,replace = TRUE)
  unique_sample12<-unique(initial_sample12)
  initial_sample13<-sample(numbers13,num_distinct_coupons,replace = TRUE)
  unique_sample13<-unique(initial_sample13)
  initial_sample14<-sample(numbers14,num_distinct_coupons,replace = TRUE)
  unique_sample14<-unique(initial_sample14)
  initial_sample15<-sample(numbers15,num_distinct_coupons,replace = TRUE)
  unique_sample15<-unique(initial_sample15)
  initial_sample16<-sample(numbers16,num_distinct_coupons,replace = TRUE)
  unique_sample16<-unique(initial_sample16)
  initial_sample17<-sample(numbers17,num_distinct_coupons,replace = TRUE)
  unique_sample17<-unique(initial_sample17)
  initial_sample18<-sample(numbers18,num_distinct_coupons,replace = TRUE)
  unique_sample18<-unique(initial_sample18)
  initial_sample19<-sample(numbers19,num_distinct_coupons,replace = TRUE)
  unique_sample19<-unique(initial_sample19)
  initial_sample20<-sample(numbers20,num_distinct_coupons,replace = TRUE)
  unique_sample20<-unique(initial_sample20)
  initial_sample21<-sample(numbers21,num_distinct_coupons,replace = TRUE)
  unique_sample21<-unique(initial_sample21)
  initial_sample22<-sample(numbers22,num_distinct_coupons,replace = TRUE)
  unique_sample22<-unique(initial_sample22)
  
  #Standard Deviation plot
  initial_sample23<-sample(numbers23,num_distinct_coupons,replace = TRUE)
  unique_sample23<-unique(initial_sample23)
  initial_sample24<-sample(numbers24,num_distinct_coupons,replace = TRUE)
  unique_sample24<-unique(initial_sample24)
  initial_sample25<-sample(numbers25,num_distinct_coupons,replace = TRUE)
  unique_sample25<-unique(initial_sample25)
  initial_sample26<-sample(numbers26,num_distinct_coupons,replace = TRUE)
  unique_sample26<-unique(initial_sample26)
  initial_sample27<-sample(numbers27,num_distinct_coupons,replace = TRUE)
  unique_sample27<-unique(initial_sample27)
  initial_sample28<-sample(numbers28,num_distinct_coupons,replace = TRUE)
  unique_sample28<-unique(initial_sample28)
  initial_sample29<-sample(numbers29,num_distinct_coupons,replace = TRUE)
  unique_sample29<-unique(initial_sample29)
  initial_sample30<-sample(numbers30,num_distinct_coupons,replace = TRUE)
  unique_sample30<-unique(initial_sample30)
  initial_sample31<-sample(numbers31,num_distinct_coupons,replace = TRUE)
  unique_sample31<-unique(initial_sample31)
  initial_sample32<-sample(numbers32,num_distinct_coupons,replace = TRUE)
  unique_sample32<-unique(initial_sample32)
  initial_sample33<-sample(numbers33,num_distinct_coupons,replace = TRUE)
  unique_sample33<-unique(initial_sample33)
  initial_sample34<-sample(numbers34,num_distinct_coupons,replace = TRUE)
  unique_sample34<-unique(initial_sample34)
  initial_sample35<-sample(numbers35,num_distinct_coupons,replace = TRUE)
  unique_sample35<-unique(initial_sample35)
  initial_sample36<-sample(numbers36,num_distinct_coupons,replace = TRUE)
  unique_sample36<-unique(initial_sample36)
  initial_sample37<-sample(numbers37,num_distinct_coupons,replace = TRUE)
  unique_sample37<-unique(initial_sample37)
  initial_sample38<-sample(numbers38,num_distinct_coupons,replace = TRUE)
  unique_sample38<-unique(initial_sample38)
  initial_sample39<-sample(numbers39,num_distinct_coupons,replace = TRUE)
  unique_sample39<-unique(initial_sample39)
  initial_sample40<-sample(numbers40,num_distinct_coupons,replace = TRUE)
  unique_sample40<-unique(initial_sample40)
  initial_sample41<-sample(numbers41,num_distinct_coupons,replace = TRUE)
  unique_sample41<-unique(initial_sample41)
  initial_sample42<-sample(numbers42,num_distinct_coupons,replace = TRUE)
  unique_sample42<-unique(initial_sample42)
  initial_sample43<-sample(numbers43,num_distinct_coupons,replace = TRUE)
  unique_sample43<-unique(initial_sample43)
  initial_sample44<-sample(numbers44,num_distinct_coupons,replace = TRUE)
  unique_sample44<-unique(initial_sample44)
  initial_sample45<-sample(numbers45,num_distinct_coupons,replace = TRUE)
  unique_sample45<-unique(initial_sample45)
  initial_sample46<-sample(numbers46,num_distinct_coupons,replace = TRUE)
  unique_sample46<-unique(initial_sample46)
  
  #counts the number of unique sample in the sorted vector
  num_unique_sample<-length(unique_sample)
  num_unique_sample0<-length(unique_sample0)
  num_unique_sample1<-length(unique_sample1)
  num_unique_sample2<-length(unique_sample2)
  num_unique_sample3<-length(unique_sample3)
  num_unique_sample4<-length(unique_sample4)
  num_unique_sample5<-length(unique_sample5)
  num_unique_sample6<-length(unique_sample6)
  num_unique_sample7<-length(unique_sample7)
  num_unique_sample8<-length(unique_sample8)
  num_unique_sample9<-length(unique_sample9)
  num_unique_sample10<-length(unique_sample10)
  num_unique_sample11<-length(unique_sample11)
  num_unique_sample12<-length(unique_sample12)
  num_unique_sample13<-length(unique_sample13)
  num_unique_sample14<-length(unique_sample14)
  num_unique_sample15<-length(unique_sample15)
  num_unique_sample16<-length(unique_sample16)
  num_unique_sample17<-length(unique_sample17)
  num_unique_sample18<-length(unique_sample18)
  num_unique_sample19<-length(unique_sample19)
  num_unique_sample20<-length(unique_sample20)
  num_unique_sample21<-length(unique_sample21)
  num_unique_sample22<-length(unique_sample22)
  
  #Standard Deviation plots
  num_unique_sample23<-length(unique_sample23)
  num_unique_sample24<-length(unique_sample24)
  num_unique_sample25<-length(unique_sample25)
  num_unique_sample26<-length(unique_sample26)
  num_unique_sample27<-length(unique_sample27)
  num_unique_sample28<-length(unique_sample28)
  num_unique_sample29<-length(unique_sample29)
  num_unique_sample30<-length(unique_sample30)
  num_unique_sample31<-length(unique_sample31)
  num_unique_sample32<-length(unique_sample32)
  num_unique_sample33<-length(unique_sample33)
  num_unique_sample34<-length(unique_sample34)
  num_unique_sample35<-length(unique_sample35)
  num_unique_sample36<-length(unique_sample36)
  num_unique_sample37<-length(unique_sample37)
  num_unique_sample38<-length(unique_sample38)
  num_unique_sample39<-length(unique_sample39)
  num_unique_sample40<-length(unique_sample40)
  num_unique_sample41<-length(unique_sample41)
  num_unique_sample42<-length(unique_sample42)
  num_unique_sample43<-length(unique_sample43)
  num_unique_sample44<-length(unique_sample44)
  num_unique_sample45<-length(unique_sample45)
  num_unique_sample46<-length(unique_sample46)
  
  #stores results back into initialized vectors
  results[i]<-num_unique_sample
  results0[i]<-num_unique_sample0
  results1[i]<-num_unique_sample1
  results2[i]<-num_unique_sample2
  results3[i]<-num_unique_sample3
  results4[i]<-num_unique_sample4
  results5[i]<-num_unique_sample5
  results6[i]<-num_unique_sample6
  results7[i]<-num_unique_sample7
  results8[i]<-num_unique_sample8
  results9[i]<-num_unique_sample9
  results10[i]<-num_unique_sample10
  results11[i]<-num_unique_sample11
  results12[i]<-num_unique_sample12
  results13[i]<-num_unique_sample13
  results14[i]<-num_unique_sample14
  results15[i]<-num_unique_sample15
  results16[i]<-num_unique_sample16
  results17[i]<-num_unique_sample17
  results18[i]<-num_unique_sample18
  results19[i]<-num_unique_sample19
  results20[i]<-num_unique_sample20
  results21[i]<-num_unique_sample21
  results22[i]<-num_unique_sample22
  
  #standard deviations plot
  results23[i]<-num_unique_sample23
  results24[i]<-num_unique_sample24
  results25[i]<-num_unique_sample25
  results26[i]<-num_unique_sample26
  results27[i]<-num_unique_sample27
  results28[i]<-num_unique_sample28
  results29[i]<-num_unique_sample29
  results30[i]<-num_unique_sample30
  results31[i]<-num_unique_sample31
  results32[i]<-num_unique_sample32
  results33[i]<-num_unique_sample33
  results34[i]<-num_unique_sample34
  results35[i]<-num_unique_sample35
  results36[i]<-num_unique_sample36
  results37[i]<-num_unique_sample37
  results38[i]<-num_unique_sample38
  results39[i]<-num_unique_sample39
  results40[i]<-num_unique_sample40
  results41[i]<-num_unique_sample41
  results42[i]<-num_unique_sample42
  results43[i]<-num_unique_sample43
  results44[i]<-num_unique_sample44
  results45[i]<-num_unique_sample45
  results46[i]<-num_unique_sample46
}#End of simulation

#evaluates the mean of each stored result 
xbar<-mean(results)
xbar0<-mean(results0)
xbar1<-mean(results1)
xbar2<-mean(results2)
xbar3<-mean(results3)
xbar4<-mean(results4)
xbar5<-mean(results5)
xbar6<-mean(results6)
xbar7<-mean(results7)
xbar8<-mean(results8)
xbar9<-mean(results9)
xbar10<-mean(results10)
xbar11<-mean(results11)
xbar12<-mean(results12)
xbar13<-mean(results13)
xbar14<-mean(results14)
xbar15<-mean(results15)
xbar16<-mean(results16)
xbar17<-mean(results17)
xbar18<-mean(results18)
xbar19<-mean(results19)
xbar20<-mean(results20)
xbar21<-mean(results21)
xbar22<-mean(results22)

#percentage of coupons collected for each level of k
p<-(xbar/num_distinct_coupons)
p
p0<-(xbar0/num_distinct_coupons)
p0
p1<-(xbar1/num_distinct_coupons)
p1
p2<-(xbar2/num_distinct_coupons)
p2
p3<-(xbar3/num_distinct_coupons)
p4<-(xbar4/num_distinct_coupons)
p4
p5<-(xbar5/num_distinct_coupons)
p6<-(xbar6/num_distinct_coupons)
p6
p7<-(xbar7/num_distinct_coupons)
p8<-(xbar8/num_distinct_coupons)
p9<-(xbar9/num_distinct_coupons)
p10<-(xbar10/num_distinct_coupons)
p10
p11<-(xbar11/num_distinct_coupons)
p12<-(xbar12/num_distinct_coupons)
p13<-(xbar13/num_distinct_coupons)
p14<-(xbar14/num_distinct_coupons)
p15<-(xbar15/num_distinct_coupons)
p15
p16<-(xbar16/num_distinct_coupons)
p17<-(xbar17/num_distinct_coupons)
p18<-(xbar18/num_distinct_coupons)
p19<-(xbar19/num_distinct_coupons)
p20<-(xbar20/num_distinct_coupons)
p20
p21<-(xbar21/num_distinct_coupons)
p22<-(xbar22/num_distinct_coupons)

#level x: (k) - number of icecreams bought.
x<-c(num_icecreams, num_icecreams0, num_icecreams1,
    num_icecreams2, num_icecreams3, num_icecreams4,
    num_icecreams5, num_icecreams6, num_icecreams7,
    num_icecreams8, num_icecreams9, num_icecreams10,
    num_icecreams11, num_icecreams12, num_icecreams13,
    num_icecreams14, num_icecreams15, num_icecreams16,
    num_icecreams17, num_icecreams18, num_icecreams19,
    num_icecreams20, num_icecreams21, num_icecreams22)# x values

#variable y - (n) - percentage of coupons collected for each level of k 
y<-c(p,p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,
     p11,p12,p13,p14,p15,p16,p17,p18,p19,
     p20,p21,p22) 
y
#relationship of y on x
r<-(y~x)

#plots the data and labels graph. 
plot(r, main = "Number of Distinct Coupons after (k) Icecreams", xlab = "Icecreams bought (K)",
     ylab = "Percentage of Total Distinct Coupons (n) Collected", xlim=range(x), ylim=range(y), pch = 20)
#line through the data points
lines(x[order(x)], y[order(x)], xlim=range(x), ylim=range(y), pch=20)
lin.mod<-lm(y~x) #initializer of the relationship of y on x
segmented.mod<-segmented(lin.mod, seg.Z = ~x, psi = 4000) #piecewise linear regression model
plot(segmented.mod, add = T, col = "red") #plots segmented.mod
legend("bottomright", legend = c("Piecewise Linear Regression Line", "Data Mean Values (From Simulation"), col =c ("red", "black"),
       pch = c(26,20), lty =c(1,1), cex = .8)

summary(segmented.mod) # a summory of the results - used to create a piecwise line of best fit formula
slope(segmented.mod) # slope of each regression line 

#Get the intercept and slope of each line
interpect(segmented.mod)
intercept(segmented.mod)
slope(segmented.mod)

#equations of segmented linear equation
mtext("PIECEWISE LINEAR REGRESSION EQUATION:
       n = b0 + b1(k)    
      k<3162 : n = 5.526e-01 + 1.0615e-04(k),
      k>3162 :n = 0.86000 + 8.9961e-06(k)",
      line =  -17.95, col = "red") 

#estimates based off of n = bo + b1(k)
reg_estimate  = 5.526e-01 + 1.0615e-04*(num_icecreams) 
reg_estimate0 =  5.526e-01 + 1.0615e-04*(num_icecreams0)
reg_estimate1 = 5.526e-01 + 1.0615e-04*(num_icecreams1)
reg_estimate2 = 5.526e-01 + 1.0615e-04*(num_icecreams2) 

#slope change and replace intercept with est. break point
reg_estimate3 = 0.86000 + 8.9961e-06*(num_icecreams3)  
reg_estimate4 = 0.86000 + 8.9961e-06*(num_icecreams4) 
reg_estimate5 =  0.86000 + 8.9961e-06*(num_icecreams5)
reg_estimate6 = 0.86000 + 8.9961e-06*(num_icecreams6) 
reg_estimate7 =  0.86000 + 8.9961e-06*(num_icecreams7) 
reg_estimate8= 0.86000  + 8.9961e-06*(num_icecreams8) 
reg_estimate9=  0.86000  + 8.9961e-06*(num_icecreams9)
reg_estimate10= 0.86000+ 8.9961e-06*(num_icecreams10)
reg_estimate11= 0.86000 + 8.9961e-06*(num_icecreams11) 
reg_estimate12=  0.86000 + 8.9961e-06*(num_icecreams12)
reg_estimate13= 0.86000  + 8.9961e-06*(num_icecreams13) 
reg_estimate14=  0.86000 + 8.9961e-06*(num_icecreams14)
reg_estimate15= 0.86000  + 8.9961e-06*(num_icecreams15) 
reg_estimate16= 0.86000+ 8.9961e-06*(num_icecreams16) 
reg_estimate17=  0.86000 + 8.9961e-06*(num_icecreams17) 
reg_estimate18=  0.86000+ 8.9961e-06*(num_icecreams18) 
reg_estimate19=  0.86000+ 8.9961e-06*(num_icecreams19) 
reg_estimate20= 0.86000+ 8.9961e-06*(num_icecreams20) 
reg_estimate21= 0.86000+ 8.9961e-06*(num_icecreams21) 
reg_estimate22= 0.86000+ 8.9961e-06*(num_icecreams22) 

#statements that compare the data results and the linear regression equation results, each respective to their specific slopes
statement<-cat("Regression Estimate (reg_estimate) = ", reg_estimate,
                "    Data Estimate (mean) = ", p) 
statement0<-cat("Regression Estimate (reg_estimate) = ", reg_estimate0,
                "    Data Estimate (mean) = ", p0)
statement1<-cat("Regression Estimate (reg_estimate) = ", reg_estimate1,
                "    Data Estimate (mean) = ", p1) 
statement2<-cat("Regression Estimate (reg_estimate) = ", reg_estimate2,
                "    Data Estimate (mean) = ", p2)
statement3<-cat("Regression Estimate (reg_estimate) = ", reg_estimate3,
                "    Data Estimate (mean) = ", p3) 
statement4<-cat("Regression Estimate (reg_estimate) = ", reg_estimate4,
                "    Data Estimate (mean) = ", p4)
statement5<-cat("Regression Estimate (reg_estimate) = ", reg_estimate5,
                "    Data Estimate (mean) = ", p5) 
statement6<-cat("Regression Estimate (reg_estimate) = ", reg_estimate6,
                "    Data Estimate (mean) = ", p6)
statement7<-cat("Regression Estimate (reg_estimate) = ", reg_estimate7,
                "    Data Estimate (mean) = ", p7) 
statement8<-cat("Regression Estimate (reg_estimate) = ", reg_estimate8,
                "    Data Estimate (mean) = ", p8)
statement9<-cat("Regression Estimate (reg_estimate) = ", reg_estimate9,
                "    Data Estimate (mean) = ", p9) 
statement10<-cat("Regression Estimate (reg_estimate) = ", reg_estimate10,
                "    Data Estimate (mean) = ", p10)
statement11<-cat("Regression Estimate (reg_estimate) = ", reg_estimate11,
                "    Data Estimate (mean) = ", p11) 
statement12<-cat("Regression Estimate (reg_estimate) = ", reg_estimate12,
                "    Data Estimate (mean) = ", p12)
statement13<-cat("Regression Estimate (reg_estimate) = ", reg_estimate13,
                "    Data Estimate (mean) = ", p13) 
statement14<-cat("Regression Estimate (reg_estimate) = ", reg_estimate14,
                "    Data Estimate (mean) = ", p14)
statement15<-cat("Regression Estimate (reg_estimate) = ", reg_estimate15,
                "    Data Estimate (mean) = ", p15) 
statement16<-cat("Regression Estimate (reg_estimate) = ", reg_estimate16,
                "    Data Estimate (mean) = ", p16)
statement17<-cat("Regression Estimate (reg_estimate) = ", reg_estimate17,
                "    Data Estimate (mean) = ", p17) 
statement18<-cat("Regression Estimate (reg_estimate) = ", reg_estimate18,
                "    Data Estimate (mean) = ", p18)
statement19<-cat("Regression Estimate (reg_estimate) = ", reg_estimate19,
                "    Data Estimate (mean) = ", p19) 
statement20<-cat("Regression Estimate (reg_estimate) = ", reg_estimate20,
                "    Data Estimate (mean) = ", p20)
statement21<-cat("Regression Estimate (reg_estimate) = ", reg_estimate21,
                "    Data Estimate (mean) = ", p21) 

statement22<-cat("Regression Estimate (reg_estimate) = ", reg_estimate22,
                 "    Data Estimate (mean) = ", p22) 

#histograms of a few results, but not all. 
hist(results, col = "yellow", main = "Density Plot: Icecreams = 1000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results0, col = "yellow", main = "Density Plot: Icecreams = 1500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results1, col = "yellow", main = "Density Plot: Icecreams = 2000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results2, col = "yellow", main = "Density Plot: Icecreams = 2500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results3, col = "yellow", main = "Density Plot: Icecreams = 3000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results4, col = "yellow", main = "Density Plot: Icecreams = 3500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results5, col = "yellow", main = "Density Plot: Icecreams = 4000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results6, col = "yellow", main = "Density Plot: Icecreams = 4500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results7, col = "yellow", main = "Density Plot: Icecreams = 5000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results8, col = "yellow", main = "Density Plot: Icecreams = 5500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results9, col = "yellow", main = "Density Plot: Icecreams = 6000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results10, col = "yellow", main = "Density Plot: Icecreams = 6500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results11, col = "yellow", main = "Density Plot: Icecreams = 7000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 20)


hist(results12, col = "yellow", main = "Density Plot: Icecreams = 7500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results13, col = "yellow", main = "Density Plot: Icecreams = 8000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results14, col = "yellow", main = "Density Plot: Icecreams = 8500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results15, col = "yellow", main = "Density Plot: Icecreams = 9000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results16, col = "yellow", main = "Density Plot: Icecreams = 9500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)

hist(results17, col = "yellow", main = "Density Plot: Icecreams = 10000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results18, col = "yellow", main = "Density Plot: Icecreams = 10500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results19, col = "yellow", main = "Density Plot: Icecreams = 11000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results20, col = "yellow", main = "Density Plot: Icecreams = 11500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)


hist(results21, col = "yellow", main = "Density Plot: Icecreams = 12000",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)



hist(results22, col = "yellow", main = "Density Plot: Icecreams = 12500",
     xlab = "Number of Distinct Coupons (n = 1000)", ylab = "Number of icecreams", lwd = 6, freq = FALSE, breaks = 40)

num_icecreams12

#Theoritical expected value equation. 
n<-num_distinct_coupons
ye<-.5772156649 #Euler- Mascheroni constant
#n x nth Harmonic
nHn<-n*log(n)+(ye*n)+(1/(2))
nHn
#statement comparing data results with expected value equation. 
compareStatement<-cat("E(k) = ", nHn,
                      "---------At k = ", num_icecreams12, "icecreams:",p12*100
                      , "percent of distince coupons collected")

#fills vector with results of simulation
myData <- data.frame(results,results0,results1,results2,results3,results4, results5, results6,
                     results7,results8,results9,results10,results11, results12, results13,
                     results14,results15,results16,results17,results18, results19, results20,
                     results21, results22)
myNames<-data.frame('1000 icecreams bought','1500 icecreams bought','2000 icecreams bought','2500 icecreams bought','3000 icecreams bought','3500 icecreams bought',
                    '4000 icecreams bought','4500 icecreams bought','5000 icecreams bought','5500 icecreams bought',
                    '6000 icecreams bought','6500 icecreams bought','7000 icecreams bought','7500 icecreams bought',
                    '8000 icecreams bought','8500 icecreams bought','9000 icecreams bought','9500 icecreams bought',
                    '10000 icecreams bought','10500 icecreams bought',
                    '11000 icecreams bought', '11500 icecreams bought','1200 icecreamsn bought','12500 icecreams bought')
#for density plot
dens <- apply(myData, 2, density)

#plots all of data density plots on one plot to comparem each level of k density. 
plot(NA,main = "Density Plots of Each level of k", xlim=range(sapply(dens, "[", "x")), ylim=range(sapply(dens, "[", "y")),
     xlab = "Number Of Coupons Collected (n)", ylab = "Density")
mapply(lines, dens, col=1:length(dens) )
legend("topleft", legend=names(myNames), fill=1:length(dens), cex = .28)

#Standard Deviation Plots
xZ<-c(num_icecreams, num_icecreams0, num_icecreams1,
     num_icecreams2, num_icecreams3, num_icecreams4,
     num_icecreams5, num_icecreams6, num_icecreams7,
     num_icecreams8, num_icecreams9, num_icecreams10,
     num_icecreams11, num_icecreams12, num_icecreams13,
     num_icecreams14, num_icecreams15, num_icecreams16,
     num_icecreams17, num_icecreams18, num_icecreams19,
     num_icecreams20, num_icecreams21, num_icecreams22,num_icecreams23, num_icecreams24, num_icecreams25,
     num_icecreams26, num_icecreams27, num_icecreams28,
     num_icecreams29, num_icecreams30, num_icecreams31,
     num_icecreams32, num_icecreams33, num_icecreams34,
     num_icecreams35, num_icecreams36, num_icecreams37,
     num_icecreams38, num_icecreams39, num_icecreams40,
     num_icecreams41, num_icecreams42, num_icecreams43,
     num_icecreams44, num_icecreams45, num_icecreams46)
#vector to plot the standard deviation values
sdR<-c(sd<-sd(results),sd(results0), sd(results1),sd(results2),sd(results3),
       sd(results4),sd(results5),sd(results6),sd(results7),sd(results8),
       sd(results9),sd(results10),sd(results11),sd(results12),sd(results13),
       sd(results14),sd(results15),sd(results16),sd(results17),sd(results18),
       sd(results19),sd(results20),sd(results21),sd(results22),sd<-sd(results23),sd(results24), sd(results25),sd(results26),sd(results27),
       sd(results28),sd(results29),sd(results30),sd(results31),sd(results32),
       sd(results33),sd(results34),sd(results35),sd(results36),sd(results37),
       sd(results38),sd(results39),sd(results40),sd(results41),sd(results42),
       sd(results43),sd(results44),sd(results45),sd(results46))

#reelationship between the standard deviation of coupons collected and number of icecreams bought
sdRel<-(sdR~xZ)
plot(sdRel, main = "Standard Deviation Of Each Level Of (k)",
     pch = 20, xlab = "Number Of Icecreams Bought (K)", ylab = "Standard Deviation")
srvft<-lm(sdRel)
regLine<-abline(srvft, col = "red")
summary(srvft)

#Zoom in Standard Deviation plot

sdR_ZOOM<-c(sd<-sd(results23),sd(results24), sd(results25),sd(results26),sd(results27),
            sd(results28),sd(results29),sd(results30),sd(results31),sd(results32),
            sd(results33),sd(results34),sd(results35),sd(results36),sd(results37),
            sd(results38),sd(results39),sd(results40),sd(results41),sd(results42),
            sd(results43),sd(results44),sd(results45),sd(results46))

x_ZOOM<-c(num_icecreams23, num_icecreams24, num_icecreams25,
          num_icecreams26, num_icecreams27, num_icecreams28,
          num_icecreams29, num_icecreams30, num_icecreams31,
          num_icecreams32, num_icecreams33, num_icecreams34,
          num_icecreams35, num_icecreams36, num_icecreams37,
          num_icecreams38, num_icecreams39, num_icecreams40,
          num_icecreams41, num_icecreams42, num_icecreams43,
          num_icecreams44, num_icecreams45, num_icecreams46)

sdRel_ZOOM<-(sdR_ZOOM~x_ZOOM)
plot(sdRel_ZOOM, main = "Standard Deviation Of Each Level Of (k)",
     pch = 20, xlab = "Number Of Icecreams Bought (K)", ylab = "Standard Deviation")



min(results1)
xbar1
max(results1)

min(results2)
xbar2

max(results2)

min(results3)
xbar3
max(results3)

min(results4)
xbar4
max(results4)

min(results5)
xbar5
max(results5)

min(results6)
xbar6
max(results6)

min(results7)
xbar7
max(results7)

min(results8)
xbar8
max(results8)

min(results9)
xbar9
max(results9)

min(results10)
xbar10
max(results10)

min(results11)
xbar11
max(results11)

min(results12)
xbar12
max(results12)

min(results13)
xbar13
max(results13)

min(results14)
xbar14
max(results14)

min(results15)
xbar15
max(results15)

min(results16)
xbar16
max(results16)

min(results17)
xbar17
max(results17)

min(results18)
xbar18
max(results18)

min(results19)
xbar19
max(results19)

min(results20)
xbar20
max(results20)

min(results21)
xbar21
max(results21)

min(results22)
xbar22
max(results22)


  
#Percentage Mean When n =k
p

#imports
install.packages("TeachingDemos")
library(TeachingDemos)
e<-c(0.63348,0.633595,0.6323733,0.63202,0.632042,0.632445,0.6319871,0.63231,0.6322978, 0.631816,
     0.6319465,0.632234,0.6321065,0.6318702,0.6319567,0.63225,0.6322079,0.6321456,0.6320868,
     0.6322175,0.6322608,0.6320961,0.6321306,0.6321465,0.6320298,0.6320769,0.6322199,0.6322225,
     0.6321748)

t.test(x = e, mu = 1-exp(-1), alternative = "two.sided", conf.level = 0.99)
z.test(x = e, mu = 1-exp(-1),  0.0002682032, alternative = "two.sided", conf.level = 0.99)
diff<-0.6322326-(1-exp(-1))
diff*100
1-exp(-1)
num_icecreams22

n = 1000

k<- 1000
k0<-1500
k5<-4000
k10<-6500
k15<-9000
k22<-12500

ke<-10000000000
ne<-ke

E<-(ke*(1-(1-(1/ke))^ne))/ne

statement<-cat("Theoretical Expectaion when (n=k) = ", E , " 1-e^(-1) =",1-exp(-1))


theor<-(k*(1-(1-(1/k))^n))/n
theor
theor0<-(k0*(1-(1-(1/k0))^n))/n
theor0
theor5<-(k5*(1-(1-(1/k5))^n))/n
theor5
theor10<-(k10*(1-(1-(1/k10))^n))/n
theor10
theor15<-(k15*(1-(1-(1/k15))^n))/n
theor15
theor22<-(k22*(1-(1-(1/k22))^n))/n
theor22

tx<-c(k,k0,k5,k10,k15,k22)
ty<-c(theor, theor0, theor5, theor10, theor15, theor22)

plot(tx,ty, pch = 20, xlab = "Number of Icecreams Bought (k)", ylab = "Percentage of Distinct Coupons
     Collected (n)", main = " Simulation")
lines(tx[order(tx)], ty[order(tx)], txlim=range(tx), tylim=range(ty), pch=20)

sy<-c(p,p0,p5,p10,p15,p22)
plot(tx,sy, pch = 20, col = "red",xlab = "Number of Icecreams Bought (k)", ylab = "Percentage of Distinct Coupons
     Collected (n)", main = "Theoretical")
lines(tx[order(tx)], ty[order(tx)], txlim=range(tx), tylim=range(ty), pch=20)


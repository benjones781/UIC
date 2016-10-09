#Benjamin Jones
#University of Illinois at Chicago
#Fall 2016
#bwjones2@uic.edu
#POWERS OF PRIME NUMBERS from the film 'Cube (1997)'
#http://www.imdb.com/title/tt0123755/

library(numbers)
library(gtools)
#function to get sum of digits of a number
digitsum <- function(x) sum(floor(x / 10^(0:(nchar(x) - 1))) %% 10)

prime_powers <- vector(mode="numeric", length=0)
#list of all the powers of primes from 1 to 998
for (i in 1:998) {
  plist <- primeFactors(i)
  if (length(unique(plist))==1) #if prime factorization of i only returns 1 unique prime
    prime_powers[length(prime_powers)+1]<-i
}
prime_powers<-prime_powers[prime_powers!=1] #removing '1', since it is not prime


test<-c(1:998)
coordlist<-vector(mode="numeric", length=0)
#list of all the sums of the digits of numbers from 1 to 998
for (i in test){
  t<-digitsum(i)
  coordlist[length(coordlist)+1]<-t
}
#ordering the list (sums of digits) in ascending order (1 10 100 .... 998)
names(coordlist)<-c(1:998)
ordered<-order(coordlist)


#a 26^3 by 3 matrix of all the coordinates of a 26x26x26 cube
x<-(1:26)
cube<-permutations(n=26,r=3,v=x,repeats.allowed=T)


coordinate <- vector(mode="numeric", length=0)
master_list <- vector(mode="numeric", length=0)
#for each coordinate of the cube (x,y, and z), 
#randomly pick a 3 digit number whose digit sum is equal to the coordainte
#ex. (1,2,3) could be represented by (010,200,0,12)
for(i in 1:26^3) { for (w in cube[i,]) {cond <- sapply(ordered, function(x) digitsum(x)==w)
e<-sample(ordered[cond],1,replace=T)
coordinate<-append(coordinate,e)
}
  master_list<-append(master_list,coordinate) #master list of all three, 3 digit coordinates
  #the list contains 52,728 elements (26^3 coordinates multiplied by 3 (x,y, and z for each))
  coordinate <- vector(mode="numeric", length=0)
  
}


traps <- vector(mode="numeric", length=0) 
#finding all the coordinates with
#at leaset one prime power (at least x, y, or z is a prime power)
for (i in seq(1,52728,3)){ box<-master_list[i:(i+2)]
if (box[1] %in% prime_powers|box[2] %in% prime_powers|box[3] %in% prime_powers) #it's a trap!
  traps<-append(traps,box) #list of all trapped coordinates
}

length(traps)
length(traps)/3 #total number of trapped boxes
(length(traps)/3)/(26^3) #% of Cube's boxes that are trapped
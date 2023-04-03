#JKO 2023-01-26
#boolean, logic, something else

vec = c(1,0,2,1)
vec
vec[c(TRUE, FALSE, TRUE, FALSE)]

# practice logical operators
1>2
1> c(0, 1, 2)


c(1,2,3) > c(3,2,1)

c(1,2,3) == c(3,2,1)

# is 1 in this vetor? yes, it exists somewhere in there and returned TRUE
1 %in% c(1,2,3)

c(1,3,5,7) %in% c(1,2,3)
# does 1 exist, does 3 exist, does 5 or 7? yes yes no no

world_oceans = data.frame(ocean = c("Atlantic", "Pacific", "Indian", "Arctic", "Southern"), 
                          area_km2 = c(77e6, 156e6, 69e6, 14e6, 20e6), 
                          avg_depth_m = c(3926, 4028, 3963, 3953, 4500))
world_oceans
world_oceans$avg_depth_m > 4000
deep_oceans = world_oceans$ocean[world_oceans$avg_depth_m > 4000]
deep_oceans
sum(world_oceans$avg_depth_m > 4000)


# imprecise numerics
1 + 2 ==3
# 1+2 is equal to 3, is 3 equal to 3, yes, returned a true
0.1+0.2 == 0.3
0.3 - (0.1+0.2)
# returns a false because the binaries are not totally equal to the decimal values
(0.3)



#boolean operators
x= 5
x
x > 3 & x < 15
x < 3 | x < 15

#subset
world_oceans[world_oceans$avg_depth_m>4000 | world_oceans$area_km2<50e6, ]



z = c(TRUE, FALSE, FALSE)
z
any(z)
all(z)


#handling missing data
NA == NA
is.na(NA)
vec = c(0,1,2,NA,4)
!is.na(vec)



#############################################
# starting if/else statements (2.3)
#############################################

num = -2

if(num < 0){
  print("uh oh, num is negative")
  num=num*-1
  print("don't worry, i made it positive")
}

num


#exercise 3.1

#my attempt, def not correct
fever = x>98.6


if(fever > 98.6){
  print("uh oh, you have a fever")
  fever - 98.6 = new_temp
}

##here's the right way to do it
temp= 101.5
if(temp>98.6){
  print(temp-98.6)
  print("you have a fever!")
  if(temp > 101.5){
    print("you have a high fever! get help!")
  }
  
#adding else
grade = 42
if(grade>= 60){
  print("you pass!")
}  else{
  print("you fail")
}


a=87
b=63
if(a>b){
  print("you won")
} else if(a>b){
  print("you lost")
} else{
  print("you tied")
}


#ifelse()
a = 0
a
4/0
ifelse(a!=0, 1/a, NA)


grade

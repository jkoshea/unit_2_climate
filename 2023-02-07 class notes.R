#2023-02-07
#janie is unwell


#a user defined function
x = c(1, 2, 3)

#allow user to switch between arithmetic and geometric means
avg = function(x, arithmetic=TRUE){
  s = sum(x)
  result = ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
  return(result)
}
s

avg(c(1,3,5))
mean(c(1,3,5))

grades = 
  
  
letter = function(grade){
  if(grade>=90){
    return("A")
  } else if(grade>=80){
    return("B")
  } else if(grade>=70){
    return("C")
  } else if (grade>=60){
    return("D")
  } else{
    return("F")
  }
}
result = letter(91)
letter

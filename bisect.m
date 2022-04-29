 #Siddharth Potti period 1
 #bisection algo
  tolerance = 0.00001;
  boundary1 = 0;
  boundary2 = 1;
  half = 0.5;
  root = 0;
  
  for k = 1: 1000
    if ((half - cos(half)) < 0)
      boundary1 = half;
      half = (boundary1+boundary2)/2;
    elseif ((half - cos(half))== 0)
      root = half
      break;
    else
      boundary2 = half;
      half = (boundary1+boundary2)/2;
    endif
    if(boundary2 - boundary1 == tolerance)
      root = half
      break;
    endif
     
  endfor
  
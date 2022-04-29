#Siddharth Potti period 1 
function temp = redrechform(x)
 [lengthR, lengthC] = size(x);
  col= 1;
  max = 0;
  min = 0;
  count = 0;
  count1 = 0;
  while(count != 1)
  sub = x;
  if(x == zeros(lengthR,lengthC))
    A = x;
    count == 1;
  endif
    for i = 1: lengthR
      if(sub(i,:) == zeros(1,lengthC))
        sub(i,:) = [];
        lengthR = lengthR - 1;
        endif
    endfor
   for i = 1: lengthR
     [row1,col1] = size(sub);
     while(count1 == 0)
        if(sub(:,col) == zeros(row1,1))
          sub(:,col) = [];
          col1 = col1 -1;
         else
          count1 = 1;
          endif
      endwhile
      sub(1,:) = sub(1,:)/sub(1,col);
      for i = 2:row1
        sub(i,:) = sub(i,:) + (-1)*(sub(i,col))*(sub(1,:));
      endfor
      min += 1;
      max+=1;
      A(max:lengthR, min:lengthC) = sub(1:row1,1:col1);
      sub = sub(2:row1,2:col1);
       bool = true;
 
      count = 1;
      
   endfor
 endwhile
 [m,n] = size(A);
 temp = A;
   for i = 1: m
     for j = 1: n 
     if(temp(i,j)==1) 
        for k = 1: i-1
          temporary = (-1)*temp(k,j);
          for p = 1: n
            temp(k,p) = temp(k,p) + (temporary*(temp(i,p)));
          endfor
       
        endfor
        
        
        
      endif
   
   endfor
  endfor
 
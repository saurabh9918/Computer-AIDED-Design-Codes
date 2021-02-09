
n=5; %number of control points                       
x=input('enter the x cordinates[x1,x2,x3,x4,x5]');
y=input('enter the y cordinates[y1,y2,y3,y4,y5]');
line(x,y);hold on;

 for k=1:3
     j=n+k;  
     for i=1:1:j                       
    l=k+1;                        
    if  i<l
        t(i)=0;
    elseif i>=l && i<=n+1
        t(i)=i-k;
    else
        t(i)=n-k+1;             
    end;
end;
disp(t);      
um=n-k+1;   
for u=0:0.01:um
    x1=0; y1=0;
    for i=1:n
        b= B_Spline(t,k,u,i);  
        x1=x1+(b*x(i));
        y1=y1+(b*y(i));
    end;
    plot(x1,y1,'*','LineWidth',1);
end;

 end;
 
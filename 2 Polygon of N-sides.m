
for j=1:2   %loop for genreating 2 Polygons
    n=input('Number of Sides:  ');   %getting number of sides, which will be different for all the polygons
    l= input('Length of Sides:  ');  %getting Length of sides, which will be different for all the Polygons
    subplot(1,2,j)   %SubPlot Block
    title('Polygon');  %Title Block
    d=(l/2)/sin(pi/n);  %getting value of a angle
    p=[-d  0 ];
    S=[];
    u=0:0.1:1;
    u=u';
    P=p;
    for i=1:n+1  % loop for getting the coordinates of Polygon
        P=P*[cos(2*pi/n)  sin(2*pi/n) ; -sin(2*pi/n)  cos(2*pi/n) ];
        S=[S;P];
    end
    for i=1:n   %Loop for drawing the Polygon
        Tx=ones(11,1)*S(i,1)+u*(S(i+1,1)-S(i,1));
        Ty=ones(11,1)*S(i,2)+u*(S(i+1,2)-S(i,2));
        plot(Tx,Ty)
        hold on    
    end
    hold off
end
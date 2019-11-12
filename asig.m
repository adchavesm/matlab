function [y,x]=asig(vector,vectorB,i,j,n)



    if (vector(i,j-1) ~= vector(i,j))
        anterior=vector(i,j-1);
        posa=i;
        adicion=-1;
        posad=0;
        for k=1:n
            if(vector(k,j-1)~=0 && vector(k,j)==0)
            adicion=vector(k,j-1);
            posad=k;
            end
        end
   
        if (anterior <adicion)
           vectorB(posad,j-1)=(vectorB(i,j)*10);
           vectorB(posa,j-1)=((vectorB(i,j)*10 )+1);
        else
       vectorB(posa,j-1)=(vectorB(i,j)*10);
           vectorB(posad,j-1)=((vectorB(i,j)*10 )+1);
        end
    
    
    else
        vectorB(i,j-1) = vectorB(i,j);
    end
        vector(i,j)=0;
        y=vector;
        x=vectorB; 
   
end
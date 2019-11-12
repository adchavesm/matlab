function y=sumar(vector,i,n)
 menor1=1.1;
 pos1=0;
 menor2=1.1;
 pos2=0;
    for k=n:-1:1
        if(vector(k,i)==0)
        elseif(vector(k,i)<menor1 || vector(k,i)<menor2)
            if(menor1<menor2)
                menor2=vector(k,i); 
                pos2=k;
            else
                menor1= vector(k,i);
                pos1=k;
            end 
        end
    end
    
if(pos1<pos2)
    
    for k=1:n
        if(k==pos1)
            vector(pos1,i+1)=vector(pos1,i)+vector(pos2,i);
        elseif(k==pos2)
        else
         vector(k,i+1)=vector(k,i);
        end
    end
else
    
    for k=1:n
        if(k==pos2)
            vector(pos2,i+1)=vector(pos1,i)+vector(pos2,i);
        elseif(k==pos1)
            
        else

         vector(k,i+1)=vector(k,i);
        end
    end
end
y=vector;

end
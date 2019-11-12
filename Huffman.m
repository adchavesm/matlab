function y=Huffman(vectorx)
    vectorx=[0.3 0.2 0.45 0.05];
    vectorx=sort(vectorx,'descend');
    [m,n]=size(vectorx);
    vectorxs=zeros(n,n-1);
    vectorxs(:,1)=vectorx; 
    for i=1:n-2
    vectorxs=sumar(vectorxs,i,n);
    end
    vectorB=zeros(n,-1)+1;
    
    pos1=0;
    pos2=0;
    for i=1:n
        if (vectorxs(i,n-1) ~= 0 && pos1 == 0)
            pos1=i;
        elseif (vectorxs(i,n-1)~=0)
            pos2=i; 
        else
        end
    end
    if(vectorxs(pos1,n-1)<vectorxs(pos2,n-1))
       vectorB(pos2,n-1)=10;
       vectorB(pos1,n-1)=11;
    else
        vectorB(pos1,n-1)=10;
       vectorB(pos2,n-1)=11;
    end
    
    vectorB
    vectorxs
    
    for j=n-1:-1:2
       for i=1:n
           posop=0;
            mayor=0;
           for k=1:n
                if(vectorxs(k,j)>mayor)
                    mayor=vectorxs(k,j);
                    posop=k;
                end
                
           end
           
           if(mayor ~= 0)
              [vectorxs,vectorB]=asig(vectorxs,vectorB,posop,j,n);
           else
              
           end
           
       end
    end
    
    
    
    vectorB
    vectorxs
    
    
    disp('Probabilidad de Xi         Codigo asignado  ') 
    for i=1:n
        a=num2str(vectorB(i,1));
        for j=2:length(a)
            I(j-1)=str2double(a(j));
        end
      fprintf('   %f                 ',vectorxs(i,1));
       fprintf('%i',I);
       fprintf('\n')
       I=0;
    end
    
    
    
    
    
end
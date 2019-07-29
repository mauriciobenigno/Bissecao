function [retval] = chamar(a, b, p,iter)
  if(iter == 0)
   fprintf('FIM DAS ITERACOES!\n') 
  endif
	resultA=resultado(a);
  resultB=resultado(b);	
	p2=p*-1;
	if((resultA<0&&resultB<0)||(resultA>0&&resultB>0))
	  x=(a+b)/2;
		retval=x;	
	else 
    if(resultA-p<=p&&resultA>=p2)
		  retval = a;
	  else 
      if(resultB-p<=p&&resultB>=p2)
		    retval = b;
	    else 
        if(resultA<0&&resultB>0)
		      aux = resultA*(-1);
        endif
		    if(aux>resultB)
			    a=(a+b)/2;
          fprintf(' Nova raiz atribuida a A: valor = %f \n',a) 
		    else 
          if(aux<resultB)
			      b=(a+b)/2;
            fprintf(' Nova raiz atribuida a B: valor = %f\n',b) 
		        retval = chamar(a,b,p,iter-1);
          endif
        endif
      endif
    endif
   endif
endfunction




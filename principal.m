function [] = principal()
  fprintf(' Entre com os valores do intervalo [A,B] \n')
	a= input('Digite o valor da A: ');
  b= input('Digite o valor do B: ');
  prec= input('Digite o valor da precisão: ');
  iter= input('Digite a quantidade de iterações: ');
  resul = chamar(a,b,prec,iter);
  valor=resultado(resul);

  fprintf('Resultado - Raiz %f valor %f \n',resul,valor)
endfunction

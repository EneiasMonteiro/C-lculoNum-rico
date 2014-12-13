%script utilizado para o método da bissecção
disp('método da bissecção')
a = input('digite o valor de a: ');
b = input('digite o valor de b: ');
err = input('digite o valor de tolerancia: ');
cf = input('digite a função (entre aspas simples): ');
f = inline(cf);
k = 0;
while norm(b - a) > err
	xk = (a+b)/2;
	if((f(a) * f(xk))>0)
	a = xk;
	else
	b = xk;
	end
	k = k+1;
end
disp(['result aprox ' num2str(xk)]);
disp(['result aprox aplicado na func ' num2str(f(xk))]);
disp(['numero iterac ' num2str(k)]);

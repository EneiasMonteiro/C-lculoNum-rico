%script utilizado para execução do método de newton
clear,clc
cf = input('digite a função de iteração : ');
syms x
f = inline(cf);
derivada = diff(cf,x);
df = inline(derivada);
tol = input('digite a tolerancia : ');
error = 50;
x = input('valor inicial: ');
n = 0;

disp('  n  	xi');
while(error>tol)
	fprintf('\t%i\t%3.5f\t\n',n,x);
	n = n+1;
	x = x - f(x)/df(x);
	error = abs(f(x));
    
end
disp(['result aprox aplicado na func ' num2str(f(x))])

%script utilizado para execução do método de newton
clear,clc
disp('método de newton')
cf = input('digite a função de iteração : ');
syms x
f = inline(cf);
derivada = diff(cf,x);
df = inline(derivada);
tol = input('digite a tolerancia : ');
error = 50;
x = input('valor inicial: ');
n = 0;

while(error>tol)
	n= n+1;
	x = x - f(x)/df(x);
	error = abs(f(x));
    
end
disp(['result aprox ' num2str(x)]);
disp(['result aprox aplicado na func ' num2str(f(x))])
disp(['numero iterac ' num2str(n)]);

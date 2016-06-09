function integral = cmptrap(a,b,n,f)
	h = (b-a)/n;
	x = [a+h:h:b-h];
	integral = h/2*(2*sum(feval(f,x))+feval(f,a)+feval(f,b));
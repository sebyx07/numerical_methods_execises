T = -2 : .01 : 40;

osf = @T exp (-139.34411 + (1.575701 * 10 ^ 5) ./(T + 
        273.15) - (6.642308 * 10 ^ 7) ./(T + 
         273.15) .^2 + (1.243800 * 10^10) ./ (T + 273.15) ./ (T + 
         273.15) .^3 - (8.621949 * 10^11) ./(T + 273.15) .^4);

hold on
		f = @(T) (( -139.3411 + (1.575701 * 10 ^5) ./(T + 273.15) - 
		(6.642308 * 10^7) ./(T + 273.15) .^2 + (1.243800 * 10^10) ./ (T + 273.15) .^3 -
		(8.621949 * 10^11) ./(T + 273.15) .^4)) - log(12);
	plot(T, f(T))

base = 0;
heat = 40;
for i = 1:1:23
	rez = ((x_4 + base) / 2);
	if(f(base) * f(rez) < 0
		heat
	 = rez;
	else
		base = rez;
	end

	f_r = f(rez)
	plot(T, f(rez), 'g')
end	
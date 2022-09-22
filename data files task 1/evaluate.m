function perf = evaluate (f, S11_val, S21_val, S31_val)
perf = zeros(1, 6); %generate a raw vector to store the performance

% following statement used to find whether if there exist some point exceed
% the specification. If true, return this value. otherwise 0.
% To simplify the code, we joint the specification value to the vector.
% Otherwise, we may need a if-else conditional statement.
perf(1) = max([S11_val(f(:) >= 12.5 & f(:) <= 12.75);-20]) - (-20); 
perf(2) = max([S11_val(f(:) >= 13.0 & f(:) <= 13.25);-20]) - (-20); 
perf(3) = max([S21_val(f(:) >= 12.0 & f(:) <= 12.30);-20]) - (-20);
perf(4) = max([S21_val(f(:) >= 13.0 & f(:) <= 13.25);-50]) - (-50); 
perf(5) = max([S31_val(f(:) >= 12.5 & f(:) <= 12.75);-55]) - (-55); 
perf(6) = max([S31_val(f(:) >= 13.4 & f(:) <= 13.75);-20]) - (-20); 

%perf = [max([S11_val(f(:) >= 12.5 & f(:) <= 12.75);-20]) - (-20), max([S11_val(f(:) >= 13.0 & f(:) <= 13.25);-20]) - (-20), max([S21_val(f(:) >= 12.0 & f(:) <= 12.30);-20]) - (-20), max([S21_val(f(:) >= 13.0 & f(:) <= 13.25);-50]) - (-50), max([S31_val(f(:) >= 12.5 & f(:) <= 12.75);-55]) - (-55), max([S31_val(f(:) >= 13.4 & f(:) <= 13.75);-20]) - (-20)];
end
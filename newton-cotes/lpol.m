

function L = lpol(xi,i)
  n = length(xi);
  tp = [1];
  d = 1; #demonimator
  if( i == 1 )
    for j = 2:n
      tp = conv ( tp, [1 ,-xi(j)] );
      d = d * (xi(1) - xi(j));
    end
  elseif( i == n )
    for j = 1:n-1
      tp = conv( tp, [1 ,-xi(j)] );
	    d = d*( xi(n) - xi(j) );
    end
  else
    for j = 1:(i-1)
      tp = conv( tp, [1 ,-xi(j)] );
	    d = d*( xi(i) - xi(j) );
    end
    for j = (i+1):n
      tp = conv( tp, [1 ,-xi(j)] );
	    d = d*( xi(i) - xi(j) );
    end
  endif
  L = tp/d;
endfunction
function checkSymmetry(A)
%CHECKSYMMETRY Returns error if A isn't symmetric
%   

if norm(A-A') > 1e-5
    error('inte symmetrisk');
end

end


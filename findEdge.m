function edge = findEdge(e,node)
%FINDEDGE Finds which boundary a node is located on
%   using edge numbering in e and additional 12.

edge = [e(5,e(1,:)==node) e(5,e(2,:)==node)];

if isempty(edge) %om inte p� en kant
    edge = 0;
    return;
end

if edge(1) == edge(2) %om noden inte ligger i ett h�rn
    edge = edge(1);    
end



if sum(edge(edge == 3)) %om noden ligger p� gr�ns 3 (kanske 12)
    load p;
    if p(1,node) == 0
        edge = [6 12];
    elseif p(1,node) < 0.2
        edge = 12;
    elseif p(1,node) == 0.2
        edge = [12 3];
    end
end


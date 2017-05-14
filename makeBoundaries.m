nodes = t(1:3,elm);

fe = zeros(3,1);
oldboundary = 0;

for k = 1:2  %potentiellt tv� r�nder per element
    boundary = 0;
    for i = 1:3 % 3 noder som kan ligga p� f�rsta raden
        boundaries = find(e(1,:)==nodes(i));
        for j = boundaries % alla funna r�nder
            if e(2,j) == nodes(1) || e(2,j) == nodes(2) || e(2,j) == nodes(3)
                if j ~= oldboundary
                    boundary = j;
                    break;
                end
            end
        end
        if boundary
            break;
        end
    end
    
    if boundary
    p1 = e(1,boundary);
    p2 = e(2,boundary);
    
    p1coords = p(1:2,p1);
    p2coords = p(1:2,p2);
    
    boundlength = sqrt((p1coords(1)-p2coords(1))^2 + (p1coords(2)-p2coords(2))^2);
    
    switch e(5,boundary)
        case qelbound
            q = qeldata;
        case convbound
%             q = (((a(p1)-Tinfdata)+(a(p2)-Tinfdata))/2)*acdata;
%             q = -q;
%             qn = q;
%             Ke = Ke + plantml(ex(elm,:),ey(elm,:),acdata*boundlength/1000);
            %kan ej anv�nda plantml!! (eller kanske dividerat med area
            %g�nger l�ngd
            q = 0;
            if ~sum(bc(:,1)==p1)
                bc = [bc; p1 Tinfdata];
            end
            if ~sum(bc(:,1)==p2)
                bc = [bc; p2 Tinfdata];
            end
        case zerobound
            q = 0;
        otherwise
            q = 0;
            %boundlength = 1;
    end
    
    node1loc = nodes == p1;
    node2loc = nodes == p2;
    
    fevalue = q * boundlength / 1000;
    fe(node1loc) = fe(node1loc) + fevalue/2;
    fe(node2loc) = fe(node2loc) + fevalue/2;
    oldboundary = boundary;
    end
end



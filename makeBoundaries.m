nodes = t(1:3,elm);

fe = zeros(3,1);
oldboundary = 0;

for k = 1:2  %potentiellt två ränder per element
    boundary = 0;
    for i = 1:3 % 3 noder som kan ligga på första raden
        boundaries = find(e(1,:)==nodes(i));
        for j = boundaries % alla funna ränder
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
            q = -Tinfdata*acdata;
            Ke = Ke + plantml(ex(elm,:),ey(elm,:),acdata*boundlength/1000);
            %kan ej använda plantml!! (eller kanske dividerat med area
            %gånger längd
%             q = 0;
%             bc = [bc; p1 Tinfdata; p2 Tinfdata];
        case zerobound
            q = 0;
        otherwise
            q = 0;
            boundlength = 1;
    end
    
    node1loc = [nodes == p1];
    node2loc = [nodes == p2];
    %fevalue = 0.2*q/boundlength;
    fevalue = q * boundlength / 1000;
    fe(node1loc) = fe(node1loc) + fevalue/2;
    fe(node2loc) = fe(node2loc) + fevalue/2;
    oldboundary = boundary;
    end
end



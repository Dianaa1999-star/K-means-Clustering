% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
cost = 0;
K = size(centroids, 1);
cluster = zeros(size(points, 1), 1);
m = size(points, 1);
%calculez distanta minima punct -> centroid
%retin in cluster indicele celui mai apropiat centroid
for i = 1:m
    k = 1;
    min_dist = sum((points(i, :) - centroids(1, :)) .^ 2);
    for j = 2:K
        dist = sum((points(i, :) - centroids(j, :)) .^ 2);
        if (dist < min_dist)
            min_dist = dist;
            k = j;
        end
    end
    cluster(i) = k;
end
%pentru fiecare centroid ii atribui o suma initiala = 0
sum1 = 0;
sum2 = 0;
sum3 = 0;
sum4 = 0;
sum5 = 0;
sum6 = 0;
sum7 = 0;
sum8 = 0;
sum9 = 0;
sum10 = 0;
%retin in matrici punctele pentru fiecare centroid
for i = 1:m
    clusterID = find(cluster == 1);
    A = points(clusterID, :);
endfor
for i = 1:m
    clusterID = find(cluster == 4);
    D = points(clusterID, :);
endfor
for i = 1:m
    clusterID = find(cluster == 5);
    E = points(clusterID, :);
endfor
for i = 1:m
    clusterID = find(cluster == 6);
    F = points(clusterID, :);
endfor
for i = 1:m
    clusterID = find(cluster == 7);
    G = points(clusterID, :);
endfor
for i = 1:m
    clusterID = find(cluster == 8);
    H = points(clusterID, :);
endfor
for i = 1:m
    clusterID = find(cluster == 9);
    I = points(clusterID, :);
endfor
for i = 1:m
    clusterID = find(cluster == 10);
    J = points(clusterID, :);
endfor
for i = 1:m
    clusterID = find(cluster == 2);
    B = points(clusterID, :);
endfor
for i = 1:m
    clusterID = find(cluster == 3);
    C = points(clusterID, :);
endfor

%calculez suma pentru fiecare centroid
p = size(A, 1);
for i = 1:p
    sum1 = norm(A(i, :) - centroids(1, :)) + sum1;
endfor

k = size(B, 1);
for i = 1:k
    sum2 = norm(B(i, :) - centroids(2, :)) + sum2;
endfor

a = size(C, 1);
for i = 1:a
    sum3 = norm(C(i, :) - centroids(3, :)) + sum3;
endfor
b = size(D, 1);
for i = 1:b
    sum4 = norm(D(i, :) - centroids(4, :)) + sum4;
endfor
c = size(E, 1);
for i = 1:c
    sum5 = norm(E(i, :) - centroids(5, :)) + sum5;
endfor
d = size(F, 1);
for i = 1:d
    sum6 = norm(F(i, :) - centroids(6, :)) + sum6;
endfor
g = size(G, 1);
for i = 1:g
    sum7 = norm(G(i, :) - centroids(7, :)) + sum7;
endfor
h = size(H, 1);
for i = 1:h
    sum8 = norm(H(i, :) - centroids(8, :)) + sum8;
endfor
i = size(I, 1);
for i = 1:i
    sum9 = norm(I(i, :) - centroids(9, :)) + sum9;
endfor
j = size(J, 1);
for i = 1:j
    sum10 = norm(J(i, :) - centroids(10, :)) + sum10;
endfor
%calculez costul total
cost = sum1 + sum2 + sum3 + sum4 + sum5 + sum6 + sum7 + sum8 + sum9 + sum10;
% TODO compute clustering solution cost
end


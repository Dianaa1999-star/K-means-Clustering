function view_cost_vs_nc(file_points)
%imi declar un vector p
p = [0];
points = dlmread(file_points, ' ', 5, 1);
%pentru NC=[1..10]
for i = 1:10
    centroids = clustering_pc(points, i); %calculez centroizii
    cost = compute_cost_pc(points, centroids); %calculez costul
    p(i) = cost; % retin in vector costul
endfor
i = [1 2 3 4 5 6 7 8 9 10];
plot(i, p); %afisez graficul
end



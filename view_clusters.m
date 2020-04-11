% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
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
for i = 1:K %afisez pentru fiecare centroid punctele corespunzatoare
    clusterID = find(cluster == i);
    scatter3(points(clusterID, 1), points(clusterID, 2), points(clusterID, 3), [], [1 0 0]);
    hold on
    clusterID = find(cluster == i);
    scatter3(points(clusterID, 1), points(clusterID, 2), points(clusterID, 3), [], [0 1 0]);
    hold on
    clusterID = find(cluster == i);
    scatter3(points(clusterID, 1), points(clusterID, 2), points(clusterID, 3), [], "filled");
 
endfor

% TODO graphical representation coded here
end

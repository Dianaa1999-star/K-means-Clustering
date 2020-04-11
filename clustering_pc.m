% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
[r, c] = size(points); % r=nr.de linii ; c = nr.de coloane
centroids = zeros(NC, 3); % am initializat un vector gol pentru centroizi
for i = 1:size(centroids, 1)
    centroids = rand(NC, c); % am initializat random centroizii
end

temp = zeros(r, 1); % vector temporar
K = size(centroids, 1); % nr.de linii pentru centroizi
ok = 0; % verificare daca centroizii sunt alesi corespunzator
cluster = zeros(size(points, 1), 1);
m = size(points, 1);
while true % cat timp nu converge
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
    if cluster == temp
        break; % cand centroizii nu isi schimba iteratia
    else
        temp = cluster; % atribui indicii clusterului
    end
    for i = 1:NC
        clusterID = find(cluster == i); %gasesc ID-urile pt fiecare grup
        if size(clusterID, 1) == 0
            ok = 1; %daca exista centroizii ce nu au niciun punct
            break;
        else centroids(i, :) = mean(points(clusterID, :), 1); % recalculez centroizii
        endif
    end
    if ok == 1
        for i = 1:size(centroids, 1)
            centroids = rand(NC, c); % initializez random iar
        end
        ok = 0;
    endif
end
end
% TODO K-Means code


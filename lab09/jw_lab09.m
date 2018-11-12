% Author: Joseph Webster
% Lydia De Wolfe | Dr. Liu
% Assignment: Lab 9

%% Load the data
clear;
load('users_movies.mat','movies','users_movies','users_movies_sort','index_small','trial_user');
[m,n]=size(users_movies);



%Prob 2
fprintf('Rating is based on movies:\n')
for j=1:length(index_small)
    fprintf('%s \n',movies{index_small(j)});
    end;
fprintf('\n');

%Prob 3
%% Select the users to compare to
[m1,n1]=size(users_movies_sort);
ratings=[];
for j=1:m1
    if prod(users_movies_sort(j,:))~=0
        ratings=[ratings; users_movies_sort(j,:)];
    end;
end;

%Q1: Initializes a variable to be a 0x0 (empty) array.

%Prob 4
%% Find the Euclidean distances
[m2,n2]=size(ratings);
for i=1:m2
    eucl(i)=norm(ratings(i,:)-trial_user);
end;

%Prob 5
[MinDist,DistIndex]=sort(eucl,'ascend');
closest_user_Dist=DistIndex(1)

%Prob 6
ratings_cent=ratings-mean(ratings,2)*ones(1,n2);
trial_user_cent=trial_user-mean(trial_user);

%Prob 7
pearson = zeros(m2,1);
for k = 1:m2
    pearson(k) = dot(ratings_cent(k,:), trial_user_cent)/norm(ratings_cent(k,:))/norm(trial_user_cent);
end;

%Prob 8
[MaxPearson,PearsonIndex]=sort(pearson,'descend');
closest_user_Pearson = MaxPearson(1)

%Prob 9
%Q2: No. closest_user_Dist is the index for a row while closest_user_Pearson
%is a correlation coefficient value for a row. 
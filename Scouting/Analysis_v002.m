%% Import Data from CSV file
ImportScript_v002;
WaterburyData = WaterburyData(2:end,:);     % Remove first row of bogus data

%% Test concatALL method

%WaterburyConcat = concatALL(WaterburyData);

%% Find median/mean of friendly switch cubes and corresponding team number
meanFriendlySwitchCubes = mean(WaterburyData.FriendlySwitchCubes);

medianFriendlySwitchCubes = median(WaterburyData.FriendlySwitchCubes);
medianFriendlySwitchCubes_TeamIdxs = find(WaterburyData.FriendlySwitchCubes == medianFriendlySwitchCubes);    % Find team indexes in table for friend switch cubes equal to median
medianFriendlySwitchCubes_TeamNums = WaterburyData.TeamNumber(medianFriendlySwitchCubes_TeamIdxs);            % Corresponding teams for those values
medianFriendlySwitchCubes_TeamNums = unique(medianFriendlySwitchCubes_TeamNums);                                % updated with no team number reptitions and sorted
%disp(num2str(medianFriendlySwitchCubes_TeamNums));

% Display part
disp("Median number of friendly switch cubes: " + num2str(medianFriendlySwitchCubes));
disp("Teams with this value...");
disp(num2str(medianFriendlySwitchCubes_TeamNums));
disp("Mean of friendly switch cubes: " + meanFriendlySwitchCubes);

%% Find median/mean of opposing switch cubes and corresponding team number
meanOpposingSwitchCubes = mean(WaterburyData.OpposingSwitchCubes);

medianOpposingSwitchCubes = median(WaterburyData.OpposingSwitchCubes);
medianOpposingSwitchCubes_TeamIdxs = find(WaterburyData.OpposingSwitchCubes == medianOpposingSwitchCubes);    % Find team indexes in table for friend switch cubes equal to median
medianOpposingSwitchCubes_TeamNums = WaterburyData.TeamNumber(medianOpposingSwitchCubes_TeamIdxs);            % Corresponding teams for those values
medianOpposingSwitchCubes_TeamNums = unique(medianOpposingSwitchCubes_TeamNums);                                % updated with no team number reptitions and sorted

minOpposingSwitchCubes = min(WaterburyData.OpposingSwitchCubes);
maxOpposingSwitchCubes = max(WaterburyData.OpposingSwitchCubes);
maxOpposingSwitchCubes_TeamNum = WaterburyData.TeamNumber(find(WaterburyData.OpposingSwitchCubes == maxOpposingSwitchCubes));

% Display part
disp("----------------------------------------------------------------------------------------------");
disp("Median number of opposing switch cubes: " + num2str(medianOpposingSwitchCubes));
disp("Teams with this value...");
disp(num2str(medianOpposingSwitchCubes_TeamNums));
disp("Mean of opposing switch cubes: " + meanOpposingSwitchCubes);
disp("Minimum opposing switch cubes: " + minOpposingSwitchCubes);
%str1 = sprintf('Maximum opposing switch cubes: ' + maxOpposingSwitchCubes + '\t' + '(Team ' + maxOpposingSwitchCubes_TeamNum + 
disp("Maximum opposing switch cubes: " + maxOpposingSwitchCubes + "     " + "(Team " + maxOpposingSwitchCubes_TeamNum + ")");


%% Median and mean sum of friendly and opposing switch cube sum

%% Percentage of sucessful climbs equation (total successful climbs / total matches of robot)

% Find total matches for each team
numTeams = size(unique(WaterburyData.TeamNumber), 1);
allTeams = unique(WaterburyData.TeamNumber);
totalNumMatches_AllTeams = zeros(1, numTeams);

for i = 1:numTeams
    totalNumMatches_AllTeams(i) = size(find(WaterburyData.TeamNumber == allTeams(i)), 1);
end

% Find num successful climbs per team
numSuccessfulClimbs_AllTeams = zeros(1, numTeams);

for i = 1:numTeams
    allClimbs = find(WaterburyData.Climbing == 2);
    allClimbs_Teams = WaterburyData.TeamNumber(allClimbs);

    for j = 1:size(allClimbs, 1)
        
    end

    numSuccessfulClimbs_AllTeams = 

%% Mean and median of scale cubes

%% Mean and median of vault cubes

%% Methods
% NOT WORKING
function concatTable = concatALL(table)
    j = 1;  % master team
    concatTable = table;
    
%     for j = 1:size(table, 1)
%         for i = (j + 1):size(table, 1)
%             if (concatTable.TeamNumber(i) == concatTable.TeamNumber(j))
%                 concatTable.CrossAutoLine(j)          = concatTable.CrossAutoLine(j)        + concatTable.CrossAutoLine(i);
%                 concatTable.AutoSwitchCubes(j)        = concatTable.AutoSwitchCubes(j)      + concatTable.AutoSwitchCubes(i);
%                 concatTable.AutoScaleCubes(j)         = concatTable.AutoScaleCubes(j)       + concatTable.AutoScaleCubes(i);
%                 concatTable.FriendlySwitchCubes(j)    = concatTable.FriendlySwitchCubes(j)  + concatTable.FriendlySwitchCubes(i);
%                 concatTable.ScaleCubes(j)             = concatTable.ScaleCubes(j)           + concatTable.ScaleCubes(i);
%                 concatTable.OpposingSwitchCubes(j)    = concatTable.OpposingSwitchCubes(j)  + concatTable.OpposingSwitchCubes(i);
%                 concatTable.VaultCubes(j)             = concatTable.VaultCubes(j)           + concatTable.VaultCubes(i);
%                 concatTable(i, :)                     = [];        % delete row i from cloned table
%             end
%         end
%     end

%     for j = 1:size(table, 1)
%         for i = (j + 1):size(table, 1)
%             if (concatTable(i, 1) == concatTable(j, 1))
%                 concatTable(j, 2) = concatTable(j, 2) + concatTable(i, 2);
%                 concatTable(j, 3) = concatTable(j, 3) + concatTable(i, 3);
%                 concatTable(i, :) = [];
%             end
%         end
%     end
end
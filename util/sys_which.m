function locations = sys_which(cmd_str)
% system-independent version of
% - which for linux
% - where for windows
% cmd: string of command to look for

if isunix || ismac
    evalc_str = sprintf('system(''which -a %s'');', cmd_str);
    locs = strtrim(evalc(evalc_str));
    locations = regexp(locs, '\n', 'split');
end

if ispc
    evalc_str = sprintf('system(''where %s'');', cmd_str);
    locs = strtrim(evalc(evalc_str));
    locations = regexp(locs, '\n', 'split');
    for i = 1:numel(locations)
        loc = strtrim(locations(i));
        locations(1) = loc;
    end
end

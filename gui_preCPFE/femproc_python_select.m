% Copyright 2013 Max-Planck-Institut f�r Eisenforschung GmbH
function python_executable = femproc_python_select
%% Get Python installation selected

gui = guidata(gcf);

python_executable_list = get(gui.handles.pm_Python, 'String');
python_executable_selected = get(gui.handles.pm_Python, 'Value');

python_executable = python_executable_list(python_executable_selected);
python_executable = python_executable{:}

gui.config.CPFEM.python = femproc_python_check(python_executable);

guidata(gcf, gui);

femproc_config_CPFEM_updated;

end
% Copyright 2013 Max-Planck-Institut f�r Eisenforschung GmbH
function h_popup = femproc_python_popup(pos)
gui = guidata(gcf);
h_popup = uicontrol( ...
    'Units', 'normalized',...
    'Position', pos,...
    'Style', 'popup', ...  'String', python.which{'Select python', 'python1', 'py2'},... % pythons should be found in femproc_init
    'String', gui.config.CPFEM.python_executables, ...
    'BackgroundColor', [0.9 0.9 0.9],...
    'FontWeight', 'bold',...
    'FontSize', 10,...
    'HorizontalAlignment', 'center', ...
    'Callback', 'gui_SX = guidata(gcf); gui_SX.config.CPFEM.python_executable = femproc_python_select; guidata(gcf, gui_SX)');
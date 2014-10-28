% Copyright 2013 Max-Planck-Institut f�r Eisenforschung GmbH
function femproc_custom_menu_BX(parent)
%% Function used to add a custom menu item in the GUI menubar
% parent: handle of the GUI

% authors: d.mercier@mpie.de / c.zambaldi@mpie.de

uimenu(parent, 'Label', 'Load CPFEM material config. file', ...
    'Callback', 'femproc_load_YAML_material_file(2)',...
    'Separator','on');
uimenu(parent, 'Label', 'Edit YAML material config. file', ...
    'Callback', 'gui_BX = guidata(gcf); edit(sprintf(''config_CPFEM_material_%s.yaml'', gui_BX.config.username))');

uimenu(parent, 'Label', 'Load Bicrystal config. file', ...
    'Callback', 'femproc_load_YAML_BX_config_file(0,2)',...
    'Separator','on');
uimenu(parent, 'Label', 'Edit YAML Bicrystal config. file', ...
    'Callback', 'gui_BX = guidata(gcf); edit(gui_BX.config_map.imported_YAML_GB_config_file);');

uimenu(parent, 'Label', 'Bicrystal GUI', ...
    'Callback', 'gui_BX = guidata(gcf); A_gui_plotGB_Bicrystal(0, gui_BX)',...
    'Separator','on');

uimenu(parent, 'Label', 'Save mesh picture', ...
    'Callback', 'gui_BX = guidata(gcf); save_figure; set(gui_BX.handles.gui_BX_win, ''Color'', [1 1 1]*.9);',...
    'Separator','on');

uimenu(parent, 'Label', 'Load mesh settings', ...
    'Callback', 'femproc_load_mesh(1);',...
    'Separator','on');
uimenu(parent, 'Label', 'Save mesh settings', ...
    'Callback', 'gui_BX = guidata(gcf); femproc_save_mesh(gui_BX.variables)');

uimenu(parent, 'Label', 'Show bicrystal conventions', ...
    'Callback', 'gui_BX = guidata(gcf); web(fullfile(gui_BX.config.doc_path_root, gui_BX.config.doc_path_BXind_png))', ...
    'Separator','on');

femproc_custom_menu_edit_gui(parent, 'A_femproc_windows_indentation_setting_BX');

end
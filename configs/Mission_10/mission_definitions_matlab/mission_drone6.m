mission_text = cell(0);

mission_text{end+1} = mission_opening( 'Mission 1', 0.2, 0.2, 0.2, 10.0);

mission_text{end+1} = take_off_hover_look_to_simp( 1, 3.0, 1.00, 'C4', columns_information, column_names);

mission_text{end+1} = submission_opening('02 - navigation', 2,  0, '');
mission_text{end+1} = go_to_point_look_to_simp( 1, 'T1' , 'C4' , points_information, point_names, columns_information, column_names);
mission_text{end+1} = go_to_point_look_to_simp( 2, 'D3F', 'C4' , points_information, point_names, columns_information, column_names);
mission_text{end+1} = go_to_point_look_to_simp(3,'JUST_LOOK','C10', points_information, point_names, columns_information, column_names);
mission_text{end+1} = go_to_point_look_to_simp( 4, 'D6F', 'C10', points_information, point_names, columns_information, column_names);
mission_text{end+1} = submission_ending();

mission_text{end+1} = land_submission( 4, 5.0);

mission_text{end+1} = mission_ending();

mission_str = '';
for i=1:length(mission_text)    
    mission_str = strcat(mission_str,mission_text{i});
end

mission_str = sprintf(mission_str);
% disp(mission_str);

#/bin/bash

rm all_data.csv
echo "participant_id,event_index,robot_pose_x,robot_pose_y,robot_pose_z,robot_pose_th,human_pose_x,human_pose_y,human_pose_z,human_pose_th,modality,target_desired_x,target_desired_y,target_desired_z,target_head_actual_x,target_head_actual_y,target_head_actual_z,target_eyes_actual_x,target_eyes_actual_y,target_eyes_actual_z,target_arms_actual_x,target_arms_actual_y,target_arms_actual_z,target_body_actual_x,target_body_actual_y,target_body_actual_z,target_perceived_x,target_perceived_y,target_perceived_z,target_perceived_error_x,target_perceived_error_y,target_perceived_error_z,target_head_actual_error_x,target_head_actual_error_y,target_head_actual_error_z,target_eyes_actual_error_x,target_eyes_actual_error_y,target_eyes_actual_error_z,target_arms_actual_error_x,target_arms_actual_error_y,target_arms_actual_error_z,target_body_actual_error_x,target_body_actual_error_y,target_body_actual_error_z,target_head_perceived_error_x,target_head_perceived_error_y,target_head_perceived_error_z,target_eyes_perceived_error_x,target_eyes_perceived_error_y,target_eyes_perceived_error_z,target_arms_perceived_error_x,target_arms_perceived_error_y,target_arms_perceived_error_z,target_body_perceived_error_x,target_body_perceived_error_y,target_body_perceived_error_z,t_event_start,t_event_stop,t_experiment_start,t_experiment_stop" >> all_data.csv
ls *.csv|while read file
do
    sed 1d "$file">>all_data.csv
done

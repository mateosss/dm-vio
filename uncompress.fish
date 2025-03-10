#!/usr/bin/env fish
export msd=/storage/local/hdd/monado-slam-datasets

function wait_space_for_file
      set -l filename $argv[1]  # The first argument is the filename to wait for space for
      #  set -l mount_point $argv[2]  # The second argument is the mount point to check
      set -l mount_point /dev/mapper/volumes-storage
      #  set -l command (string join " " $argv[3..-1])  # The rest of the arguments make up the command

       set -l kilobytes (math (stat -c%s $filename) / 1024)
       set -l kilobytes (math ceil $kilobytes)
       set -l kilobytes (math $kilobytes + 50000000) # Add some padding space for multipart zips (50GB)
       while true
               set -l available (df $mount_point | awk 'NR==2 {print $4}')
               if test $available -ge $kilobytes
                       echo "Sufficient space available, continuing..."
                      #  eval $command
                       break
                   else
                       echo "Waiting for sufficient space... (Currently: $available KB available but need $kilobytes KB)"
                       sleep 1  # Wait 60 seconds before checking again
                   end
           end
end

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO01_hand_puncher_1.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO01_hand_puncher_1/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO01_hand_puncher_1 MIO01_hand_puncher_1/dmviodata
touch MIO01_hand_puncher_1_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO02_hand_puncher_2.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO02_hand_puncher_2/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO02_hand_puncher_2 MIO02_hand_puncher_2/dmviodata
touch MIO02_hand_puncher_2_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO03_hand_shooter_easy.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO03_hand_shooter_easy/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO03_hand_shooter_easy MIO03_hand_shooter_easy/dmviodata
touch MIO03_hand_shooter_easy_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO04_hand_shooter_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO04_hand_shooter_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO04_hand_shooter_hard MIO04_hand_shooter_hard/dmviodata
touch MIO04_hand_shooter_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO05_inspect_easy.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO05_inspect_easy/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO05_inspect_easy MIO05_inspect_easy/dmviodata
touch MIO05_inspect_easy_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO06_inspect_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO06_inspect_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO06_inspect_hard MIO06_inspect_hard/dmviodata
touch MIO06_inspect_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO07_mapping_easy.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO07_mapping_easy/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO07_mapping_easy MIO07_mapping_easy/dmviodata
touch MIO07_mapping_easy_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO08_mapping_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO08_mapping_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO08_mapping_hard MIO08_mapping_hard/dmviodata
touch MIO08_mapping_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO09_short_1_updown.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO09_short_1_updown/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO09_short_1_updown MIO09_short_1_updown/dmviodata
touch MIO09_short_1_updown_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO10_short_2_panorama.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO10_short_2_panorama/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO10_short_2_panorama MIO10_short_2_panorama/dmviodata
touch MIO10_short_2_panorama_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO11_short_3_backandforth.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO11_short_3_backandforth/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO11_short_3_backandforth MIO11_short_3_backandforth/dmviodata
touch MIO11_short_3_backandforth_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO12_moving_screens.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO12_moving_screens/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO12_moving_screens MIO12_moving_screens/dmviodata
touch MIO12_moving_screens_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO13_moving_person.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO13_moving_person/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO13_moving_person MIO13_moving_person/dmviodata
touch MIO13_moving_person_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO14_moving_props.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO14_moving_props/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO14_moving_props MIO14_moving_props/dmviodata
touch MIO14_moving_props_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO15_moving_person_props.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO15_moving_person_props/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO15_moving_person_props MIO15_moving_person_props/dmviodata
touch MIO15_moving_person_props_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO16_moving_screens_person_props.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIO16_moving_screens_person_props/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIO16_moving_screens_person_props MIO16_moving_screens_person_props/dmviodata
touch MIO16_moving_screens_person_props_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB01_beatsaber_100bills_360_normal.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPB01_beatsaber_100bills_360_normal/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPB01_beatsaber_100bills_360_normal MIPB01_beatsaber_100bills_360_normal/dmviodata
touch MIPB01_beatsaber_100bills_360_normal_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB02_beatsaber_crabrave_360_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPB02_beatsaber_crabrave_360_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPB02_beatsaber_crabrave_360_hard MIPB02_beatsaber_crabrave_360_hard/dmviodata
touch MIPB02_beatsaber_crabrave_360_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB03_beatsaber_countryrounds_360_expert.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPB03_beatsaber_countryrounds_360_expert/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPB03_beatsaber_countryrounds_360_expert MIPB03_beatsaber_countryrounds_360_expert/dmviodata
touch MIPB03_beatsaber_countryrounds_360_expert_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB04_beatsaber_fitbeat_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPB04_beatsaber_fitbeat_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPB04_beatsaber_fitbeat_hard MIPB04_beatsaber_fitbeat_hard/dmviodata
touch MIPB04_beatsaber_fitbeat_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB05_beatsaber_fitbeat_360_expert.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPB05_beatsaber_fitbeat_360_expert/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPB05_beatsaber_fitbeat_360_expert MIPB05_beatsaber_fitbeat_360_expert/dmviodata
touch MIPB05_beatsaber_fitbeat_360_expert_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB06_beatsaber_fitbeat_expertplus_1.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPB06_beatsaber_fitbeat_expertplus_1/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPB06_beatsaber_fitbeat_expertplus_1 MIPB06_beatsaber_fitbeat_expertplus_1/dmviodata
touch MIPB06_beatsaber_fitbeat_expertplus_1_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB07_beatsaber_fitbeat_expertplus_2.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPB07_beatsaber_fitbeat_expertplus_2/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPB07_beatsaber_fitbeat_expertplus_2 MIPB07_beatsaber_fitbeat_expertplus_2/dmviodata
touch MIPB07_beatsaber_fitbeat_expertplus_2_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB08_beatsaber_long_session_1.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPB08_beatsaber_long_session_1/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPB08_beatsaber_long_session_1 MIPB08_beatsaber_long_session_1/dmviodata
touch MIPB08_beatsaber_long_session_1_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP01_pistolwhip_blackmagic_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPP01_pistolwhip_blackmagic_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPP01_pistolwhip_blackmagic_hard MIPP01_pistolwhip_blackmagic_hard/dmviodata
touch MIPP01_pistolwhip_blackmagic_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP02_pistolwhip_lilith_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPP02_pistolwhip_lilith_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPP02_pistolwhip_lilith_hard MIPP02_pistolwhip_lilith_hard/dmviodata
touch MIPP02_pistolwhip_lilith_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP03_pistolwhip_requiem_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPP03_pistolwhip_requiem_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPP03_pistolwhip_requiem_hard MIPP03_pistolwhip_requiem_hard/dmviodata
touch MIPP03_pistolwhip_requiem_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP04_pistolwhip_revelations_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPP04_pistolwhip_revelations_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPP04_pistolwhip_revelations_hard MIPP04_pistolwhip_revelations_hard/dmviodata
touch MIPP04_pistolwhip_revelations_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP05_pistolwhip_thefall_hard_2pistols.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPP05_pistolwhip_thefall_hard_2pistols/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPP05_pistolwhip_thefall_hard_2pistols MIPP05_pistolwhip_thefall_hard_2pistols/dmviodata
touch MIPP05_pistolwhip_thefall_hard_2pistols_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP06_pistolwhip_thegrave_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPP06_pistolwhip_thegrave_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPP06_pistolwhip_thegrave_hard MIPP06_pistolwhip_thegrave_hard/dmviodata
touch MIPP06_pistolwhip_thegrave_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPT_thrill_of_the_fight/MIPT01_thrillofthefight_setup.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPT01_thrillofthefight_setup/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPT01_thrillofthefight_setup MIPT01_thrillofthefight_setup/dmviodata
touch MIPT01_thrillofthefight_setup_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPT_thrill_of_the_fight/MIPT02_thrillofthefight_fight_1.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPT02_thrillofthefight_fight_1/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPT02_thrillofthefight_fight_1 MIPT02_thrillofthefight_fight_1/dmviodata
touch MIPT02_thrillofthefight_fight_1_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPT_thrill_of_the_fight/MIPT03_thrillofthefight_fight_2.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MIPT03_thrillofthefight_fight_2/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MIPT03_thrillofthefight_fight_2 MIPT03_thrillofthefight_fight_2/dmviodata
touch MIPT03_thrillofthefight_fight_2_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO01_low_light.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO01_low_light/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO01_low_light MGO01_low_light/dmviodata
touch MGO01_low_light_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO02_hand_puncher.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO02_hand_puncher/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO02_hand_puncher MGO02_hand_puncher/dmviodata
touch MGO02_hand_puncher_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO03_hand_shooter_easy.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO03_hand_shooter_easy/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO03_hand_shooter_easy MGO03_hand_shooter_easy/dmviodata
touch MGO03_hand_shooter_easy_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO04_hand_shooter_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO04_hand_shooter_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO04_hand_shooter_hard MGO04_hand_shooter_hard/dmviodata
touch MGO04_hand_shooter_hard_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO05_inspect_easy.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO05_inspect_easy/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO05_inspect_easy MGO05_inspect_easy/dmviodata
touch MGO05_inspect_easy_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO06_inspect_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO06_inspect_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO06_inspect_hard MGO06_inspect_hard/dmviodata
touch MGO06_inspect_hard_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO07_mapping_easy.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO07_mapping_easy/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO07_mapping_easy MGO07_mapping_easy/dmviodata
touch MGO07_mapping_easy_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO08_mapping_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO08_mapping_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO08_mapping_hard MGO08_mapping_hard/dmviodata
touch MGO08_mapping_hard_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO09_short_1_updown.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO09_short_1_updown/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO09_short_1_updown MGO09_short_1_updown/dmviodata
touch MGO09_short_1_updown_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO10_short_2_panorama.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO10_short_2_panorama/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO10_short_2_panorama MGO10_short_2_panorama/dmviodata
touch MGO10_short_2_panorama_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO11_short_3_backandforth.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO11_short_3_backandforth/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO11_short_3_backandforth MGO11_short_3_backandforth/dmviodata
touch MGO11_short_3_backandforth_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO12_freemovement_long_session.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO12_freemovement_long_session/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO12_freemovement_long_session MGO12_freemovement_long_session/dmviodata
touch MGO12_freemovement_long_session_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO13_sudden_movements.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO13_sudden_movements/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO13_sudden_movements MGO13_sudden_movements/dmviodata
touch MGO13_sudden_movements_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO14_flickering_light.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO14_flickering_light/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO14_flickering_light MGO14_flickering_light/dmviodata
touch MGO14_flickering_light_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO15_seated_screen.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MGO15_seated_screen/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MGO15_seated_screen MGO15_seated_screen/dmviodata
touch MGO15_seated_screen_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO01_hand_puncher_1.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO01_hand_puncher_1/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO01_hand_puncher_1 MOO01_hand_puncher_1/dmviodata
touch MOO01_hand_puncher_1_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO02_hand_puncher_2.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO02_hand_puncher_2/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO02_hand_puncher_2 MOO02_hand_puncher_2/dmviodata
touch MOO02_hand_puncher_2_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO03_hand_shooter_easy.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO03_hand_shooter_easy/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO03_hand_shooter_easy MOO03_hand_shooter_easy/dmviodata
touch MOO03_hand_shooter_easy_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO04_hand_shooter_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO04_hand_shooter_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO04_hand_shooter_hard MOO04_hand_shooter_hard/dmviodata
touch MOO04_hand_shooter_hard_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO05_inspect_easy.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO05_inspect_easy/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO05_inspect_easy MOO05_inspect_easy/dmviodata
touch MOO05_inspect_easy_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO06_inspect_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO06_inspect_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO06_inspect_hard MOO06_inspect_hard/dmviodata
touch MOO06_inspect_hard_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO07_mapping_easy.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO07_mapping_easy/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO07_mapping_easy MOO07_mapping_easy/dmviodata
touch MOO07_mapping_easy_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO08_mapping_hard.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO08_mapping_hard/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO08_mapping_hard MOO08_mapping_hard/dmviodata
touch MOO08_mapping_hard_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO09_short_1_updown.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO09_short_1_updown/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO09_short_1_updown MOO09_short_1_updown/dmviodata
touch MOO09_short_1_updown_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO10_short_2_panorama.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO10_short_2_panorama/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO10_short_2_panorama MOO10_short_2_panorama/dmviodata
touch MOO10_short_2_panorama_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO11_short_3_backandforth.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO11_short_3_backandforth/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO11_short_3_backandforth MOO11_short_3_backandforth/dmviodata
touch MOO11_short_3_backandforth_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO12_freemovement_long_session.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO12_freemovement_long_session/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO12_freemovement_long_session MOO12_freemovement_long_session/dmviodata
touch MOO12_freemovement_long_session_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO13_sudden_movements.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO13_sudden_movements/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO13_sudden_movements MOO13_sudden_movements/dmviodata
touch MOO13_sudden_movements_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO14_flickering_light.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO14_flickering_light/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO14_flickering_light MOO14_flickering_light/dmviodata
touch MOO14_flickering_light_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO15_seated_screen.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO15_seated_screen/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO15_seated_screen MOO15_seated_screen/dmviodata
touch MOO15_seated_screen_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO16_still.zip
wait_space_for_file $filename
7z x -y $filename
mkdir -p MOO16_still/dmviodata
$xrtmet/euroc/dmvio_ops.py euroc2dm_files MOO16_still MOO16_still/dmviodata
touch MOO16_still_exists

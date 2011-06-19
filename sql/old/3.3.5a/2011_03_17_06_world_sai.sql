-- Legion Fel Cannon SAI
SET @ENTRY := 21233;
SET @SPELL1 := 36238; -- Fel Cannon Blast
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Legion Fel Cannon - OOC - Prevent Combat Movement'),
(@ENTRY,0,1,0,0,0,100,0,0,1000,2500,2500,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Legion Fel Cannon - Combat - Cast Fel Cannon Blast');

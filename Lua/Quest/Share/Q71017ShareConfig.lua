main_id = 71017
local tbl = {}
local n = 7101702
tbl[1] = 7101701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7101701"] = {}, ["7101702"] = {}}

quest_data = {
    ["7101701"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "QBS_Start"}}},
    ["7101702"] = {
        npcs = {
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_chongzuo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2439,
                alias = "Npc2439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_yinxing2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

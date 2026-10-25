main_id = 74097
local tbl = {}
local n = 7409702
local v = 7409703
tbl[1] = 7409701
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7409701"] = {}, ["7409702"] = {}, ["7409703"] = {}}

quest_data = {
    ["7409701"] = {},
    ["7409702"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_5326:4385.722,153.710,4611.781,0.000,305.000,0.000]"}}
    },
    ["7409703"] = {
        npcs = {
            {
                id = 5218,
                alias = "Npc5218",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5325:4384.284,153.710,4612.681,0.000,120.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

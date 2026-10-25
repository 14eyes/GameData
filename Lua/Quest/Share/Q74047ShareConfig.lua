main_id = 74047
local tbl = {}
local n = 7404702
local v = 7404703
local n2 = 7404704
tbl[1] = 7404701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7404701"] = {}, ["7404704"] = {}}

quest_data = {
    ["7404701"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_6333:4438.083,183.327,4794.335,0.000,85.000,0.000]"}}
    },
    ["7404702"] = {
        npcs = {
            {
                id = 5213,
                alias = "Npc5213",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4662:4439.398,183.306,4794.601,0.000,260.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_4663:4423.875,181.265,4797.361,0.000,250.000,0.000]"}}
    },
    ["7404703"] = {},
    ["7404704"] = {}
}

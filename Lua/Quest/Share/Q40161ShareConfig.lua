main_id = 40161
local tbl = {}
local n = 4016102
tbl[1] = 4016101
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4016101"] = {}, ["4016102"] = {}}

quest_data = {
    ["4016101"] = {},
    ["4016102"] = {
        npcs = {
            {
                id = 30519,
                alias = "Npc30519",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_300300737:2513.601,202.481,-1125.999,0.000,150.066,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

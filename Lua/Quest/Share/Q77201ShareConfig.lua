main_id = 77201
local tbl = {}
local n = 7720102
local v = 7720103
tbl[1] = 7720101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7720101"] = {}, ["7720102"] = {}, ["7720103"] = {}}

quest_data = {
    ["7720101"] = {},
    ["7720102"] = {},
    ["7720103"] = {
        npcs = {
            {
                id = 22651,
                alias = "Npc22651",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17900:10151.500,200.822,6930.772,0.000,97.701,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

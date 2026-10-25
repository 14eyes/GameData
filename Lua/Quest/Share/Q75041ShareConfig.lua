main_id = 75041
local tbl = {}
local n = 7504102
local v = 7504103
local n2 = 7504104
tbl[1] = 7504101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7504101"] = {}, ["7504102"] = {}, ["7504103"] = {}, ["7504104"] = {}}

quest_data = {
    ["7504101"] = {},
    ["7504102"] = {},
    ["7504103"] = {},
    ["7504104"] = {
        npcs = {
            {
                id = 21679,
                alias = "Npc21679",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8665:-219.266,314.414,10117.000,0.000,14.280,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

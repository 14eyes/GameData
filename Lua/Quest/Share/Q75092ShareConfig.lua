main_id = 75092
local tbl = {}
local n = 7509202
local v = 7509203
tbl[1] = 7509201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7509201"] = {}, ["7509202"] = {}, ["7509203"] = {}}

quest_data = {
    ["7509201"] = {},
    ["7509202"] = {},
    ["7509203"] = {
        npcs = {
            {
                id = 21460,
                alias = "Npc21460",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9109:224.847,249.753,9648.963,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

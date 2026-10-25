main_id = 75281
local tbl = {}
local n = 7528102
local v = 7528103
tbl[1] = 7528101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7528101"] = {}, ["7528102"] = {}, ["7528103"] = {}}

quest_data = {
    ["7528101"] = {},
    ["7528102"] = {},
    ["7528103"] = {
        npcs = {
            {
                id = 22165,
                alias = "Npc22165",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200062:1724.687,202.798,15057.260,0.000,350.377,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

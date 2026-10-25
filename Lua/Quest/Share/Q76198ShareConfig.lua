main_id = 76198
local tbl = {}
local n = 7619802
local v = 7619803
tbl[1] = 7619801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7619801"] = {}, ["7619802"] = {}, ["7619803"] = {}}

quest_data = {
    ["7619801"] = {},
    ["7619802"] = {
        npcs = {
            {
                id = 16562,
                alias = "Npc16562",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15869:5686.873,278.516,9745.776]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7619803"] = {}
}

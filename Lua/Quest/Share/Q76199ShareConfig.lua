main_id = 76199
local tbl = {}
local n = 7619902
local v = 7619903
tbl[1] = 7619901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7619901"] = {}, ["7619902"] = {}, ["7619903"] = {}}

quest_data = {
    ["7619901"] = {},
    ["7619902"] = {
        npcs = {
            {
                id = 16562,
                alias = "Npc16562",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15870:1849.176,229.446,10408.200]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7619903"] = {}
}

main_id = 76219
local tbl = {}
local n = 7621902
local v = 7621903
tbl[1] = 7621901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7621901"] = {}, ["7621903"] = {}}

quest_data = {
    ["7621901"] = {},
    ["7621902"] = {},
    ["7621903"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17426:2658.756,335.938,4662.404,0.000,280.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

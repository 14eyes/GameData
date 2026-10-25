main_id = 75062
local tbl = {}
local n = 7506202
local v = 7506203
local n2 = 7506204
tbl[1] = 7506201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7506201"] = {}, ["7506202"] = {}, ["7506203"] = {}, ["7506204"] = {}}

quest_data = {
    ["7506201"] = {},
    ["7506202"] = {},
    ["7506203"] = {},
    ["7506204"] = {
        npcs = {
            {
                id = 21680,
                alias = "Npc21680",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8667:-272.292,200.811,9510.428,0.000,96.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

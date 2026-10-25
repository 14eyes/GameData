main_id = 77200
local tbl = {}
local n = 7720002
local v = 7720003
tbl[1] = 7720001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7720001"] = {}, ["7720002"] = {}, ["7720003"] = {}}

quest_data = {
    ["7720001"] = {},
    ["7720002"] = {},
    ["7720003"] = {
        npcs = {
            {
                id = 22667,
                alias = "Npc22667",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17899:8529.342,324.087,6796.243,0.000,211.996,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 22666,
                alias = "Npc22666",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17898:8528.131,324.090,6793.999,0.000,30.857,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

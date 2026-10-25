main_id = 75192
local tbl = {}
local n = 7519202
local v = 7519203
tbl[1] = 7519201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7519201"] = {}, ["7519202"] = {}, ["7519203"] = {}}

quest_data = {
    ["7519201"] = {},
    ["7519202"] = {
        npcs = {
            {
                id = 21808,
                alias = "Npc21808",
                script = "Actor/Npc/TempNPC",
                pos = "[101_62:-81.810,758.880,321.920]",
                scene_id = 101,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7519203"] = {}
}

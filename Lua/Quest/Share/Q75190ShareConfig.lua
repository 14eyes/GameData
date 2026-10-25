main_id = 75190
local tbl = {}
local n = 7519002
local v = 7519003
tbl[1] = 7519001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7519001"] = {}, ["7519002"] = {}, ["7519003"] = {}}

quest_data = {
    ["7519001"] = {},
    ["7519002"] = {
        npcs = {
            {
                id = 21806,
                alias = "Npc21806",
                script = "Actor/Npc/TempNPC",
                pos = "[101_60:116.482,723.600,311.098]",
                scene_id = 101,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7519003"] = {}
}

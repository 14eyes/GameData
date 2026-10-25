main_id = 72812
local tbl = {}
local n = 7281202
local v = 7281203
tbl[1] = 7281201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7281201"] = {}, ["7281203"] = {}}

quest_data = {
    ["7281201"] = {},
    ["7281202"] = {},
    ["7281203"] = {
        npcs = {
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72812_SHUNJIEND",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

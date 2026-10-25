main_id = 40040
local tbl = {}
local n = 4004002
local v = 4004003
tbl[1] = 4004001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4004001"] = {}}

quest_data = {
    ["4004001"] = {
        npcs = {
            {
                id = 30085,
                alias = "Npc30085",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4004001_N30085_310701337",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4004002"] = {},
    ["4004003"] = {}
}

main_id = 40061
local tbl = {}
local n = 4006102
local v = 4006103
local n2 = 4006104
tbl[1] = 4006101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4006101"] = {}, ["4006102"] = {}, ["4006103"] = {}}

quest_data = {
    ["4006101"] = {
        npcs = {
            {
                id = 3193,
                alias = "Npc3193",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4006101_N3193",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4006102"] = {},
    ["4006103"] = {},
    ["4006104"] = {}
}

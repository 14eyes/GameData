main_id = 12009
local tbl = {}
local n = 1200902
local v = 1200903
local n2 = 1200904
local n3 = 1200906
local n4 = 1200905
tbl[1] = 1200901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1200901"] = {}, ["1200905"] = {}, ["1200906"] = {}}

quest_data = {
    ["1200901"] = {
        npcs = {
            {
                id = 3005,
                alias = "Npc3005",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200903_gu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1200902"] = {},
    ["1200903"] = {},
    ["1200904"] = {},
    ["1200905"] = {},
    ["1200906"] = {}
}

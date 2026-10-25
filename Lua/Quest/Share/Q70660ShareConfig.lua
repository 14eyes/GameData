main_id = 70660
local tbl = {}
local n = 7066005
local v = 7066002
local n2 = 7066003
local n3 = 7066004
tbl[1] = 7066001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7066001"] = {}, ["7066002"] = {}}

quest_data = {
    ["7066001"] = {
        npcs = {
            {
                id = 1512,
                alias = "NPC1512",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q18000kaiselin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7066002"] = {},
    ["7066003"] = {},
    ["7066004"] = {},
    ["7066005"] = {}
}

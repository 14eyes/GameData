main_id = 74086
local tbl = {}
local n = 7408602
local v = 7408603
local n2 = 7408604
local n3 = 7408605
tbl[1] = 7408601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

quest_data = {
    ["7408601"] = {},
    ["7408602"] = {
        npcs = {
            {
                id = 21084,
                alias = "Npc21084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5005:4624.636,447.270,4195.575,0.000,251.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5259,
                alias = "Npc5259",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5006:4624.758,447.270,4193.560,0.000,292.610,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7408603"] = {},
    ["7408604"] = {},
    ["7408605"] = {}
}

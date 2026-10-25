main_id = 74080
local tbl = {}
local n = 7408002
local v = 7408003
local n2 = 7408004
local n3 = 7408005
local n4 = 7408006
tbl[1] = 7408001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7408001"] = {},
    ["7408002"] = {},
    ["7408003"] = {},
    ["7408004"] = {},
    ["7408005"] = {},
    ["7408006"] = {}
}

quest_data = {
    ["7408001"] = {},
    ["7408002"] = {},
    ["7408003"] = {},
    ["7408004"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_6677:4562.189,517.858,3589.887,0.000,48.668,0.000]"}}
    },
    ["7408005"] = {
        npcs = {
            {
                id = 5269,
                alias = "Npc5269",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5608:4621.834,541.674,3634.190]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7408006"] = {}
}

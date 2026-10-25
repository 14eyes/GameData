main_id = 77150
local tbl = {}
local n = 7715002
local v = 7715003
local n2 = 7715004
local n3 = 7715005
local n4 = 7715006
local n5 = 7715007
tbl[1] = 7715001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7715001"] = {},
    ["7715002"] = {},
    ["7715003"] = {},
    ["7715004"] = {},
    ["7715005"] = {},
    ["7715006"] = {},
    ["7715007"] = {
        npcs = {
            {
                id = 22642,
                alias = "Npc22642",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17710:9107.425,225.486,7448.410]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7715001"] = {},
    ["7715002"] = {},
    ["7715003"] = {
        npcs = {
            {
                id = 22640,
                alias = "Npc22640",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17689:9268.472,205.807,7540.809]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7715004"] = {},
    ["7715005"] = {
        npcs = {
            {
                id = 22641,
                alias = "Npc22641",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17688:9333.146,227.592,7542.428]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7715006"] = {
        npcs = {
            {
                id = 22642,
                alias = "Npc22642",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17710:9107.425,225.486,7448.410]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7715007"] = {}
}

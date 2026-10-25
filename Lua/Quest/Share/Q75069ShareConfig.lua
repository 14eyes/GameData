main_id = 75069
local tbl = {}
local n = 7506902
local v = 7506903
local n2 = 7506904
local n3 = 7506906
local n4 = 7506907
local n5 = 7506908
local n6 = 7506905
local n7 = 7506909
local n8 = 7506910
tbl[1] = 7506901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7506901"] = {},
    ["7506902"] = {},
    ["7506903"] = {},
    ["7506904"] = {},
    ["7506905"] = {},
    ["7506906"] = {},
    ["7506907"] = {},
    ["7506908"] = {},
    ["7506909"] = {},
    ["7506910"] = {}
}

quest_data = {
    ["7506901"] = {},
    ["7506902"] = {
        npcs = {
            {
                id = 21610,
                alias = "Npc21610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8683:-175.970,288.443,9981.399,0.000,54.665,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7506903"] = {
        npcs = {
            {
                id = 21650,
                alias = "Npc21650",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9832:-180.621,289.379,9986.895]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7506904"] = {},
    ["7506905"] = {},
    ["7506906"] = {},
    ["7506907"] = {},
    ["7506908"] = {
        npcs = {
            {
                id = 21652,
                alias = "Npc21652",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8685:-172.982,255.124,9975.733,0.000,45.925,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7506909"] = {},
    ["7506910"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_9414:-174.000,258.000,10012.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

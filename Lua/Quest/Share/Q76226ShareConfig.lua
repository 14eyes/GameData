main_id = 76226
local tbl = {}
local n = 7622601
local v = 7622602
local n2 = 7622603
tbl[1] = 7622604
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7622601"] = {}, ["7622602"] = {}, ["7622603"] = {}, ["7622604"] = {}}

quest_data = {
    ["7622601"] = {
        npcs = {
            {
                id = 15702,
                alias = "Npc15702",
                script = "Actor/Npc/TempNPC",
                pos = "[102_419:-553.681,117.565,-1380.683,0.000,99.551,0.000]",
                scene_id = 102,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[102_420:-551.110,117.565,-1381.007,0.000,286.289,0.000]",
                scene_id = 102,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7622602"] = {},
    ["7622603"] = {
        npcs = {
            {
                id = 15702,
                alias = "Npc15702",
                script = "Actor/Npc/TempNPC",
                pos = "[102_416:-564.784,115.180,-1362.203,0.000,107.123,0.000]",
                scene_id = 102,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[102_417:-562.287,115.155,-1362.110,0.000,285.420,0.000]",
                scene_id = 102,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7622604"] = {}
}

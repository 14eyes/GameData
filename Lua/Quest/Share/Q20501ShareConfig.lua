main_id = 20501
local tbl = {}
local n = 2050102
local v = 2050103
local n2 = 2050104
local n3 = 2050105
local n4 = 2050106
local n5 = 2050107
local n6 = 2050108
local n7 = 2050109
local n8 = 2050110
tbl[1] = 2050101
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
rewind_data = {}
rewind_data["2050101"] = {}
quest_data = {}

quest_data["2050102"] = {
    npcs = {
        {
            alias = "Npc141301",
            script = "Actor/Npc/TempNPC",
            id = 141301,
            pos = "Q2050105_Jack",
            scene_id = 40100,
            room_ID = 0,
            data_index = 0
        },
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q2050105_Paimon",
            scene_id = 40100,
            room_ID = 0,
            data_index = 0
        }
    }
}

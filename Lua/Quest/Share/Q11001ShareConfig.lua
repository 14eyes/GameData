main_id = 11001
local tbl = {}
local n = 1100102
local v = 1100103
local n2 = 1100104
tbl[1] = 1100101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
XianglingData = {ID = 1012, Alias = "Xiangling"}
PaimonData = {ID = 1005, Alias = "Paimon"}
DraffData = {ID = 153701, Alias = "Npc153701"}
BrookData = {ID = 154101, Alias = "Npc154101"}
rewind_data = {}
quest_data = {}

quest_data["1100101"] = {
    npcs = {
        {
            alias = "Xiangling",
            script = "Actor/Npc/TempNPC",
            id = 1012,
            pos = "Q1100101XL",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Npc153701",
            script = "Actor/Npc/TempNPC",
            id = 153701,
            pos = "Q1100101Draff",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["1100102"] = {
    npcs = {
        {
            alias = "Npc154101",
            script = "Actor/Npc/TempNPC",
            id = 154101,
            pos = "Q1100103Brook",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["1100104"] = {
    npcs = {
        {
            alias = "Xiangling",
            script = "Actor/Npc/TempNPC",
            id = 1012,
            pos = "Q1100103XL",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Npc154101",
            script = "Actor/Npc/TempNPC",
            id = 154101,
            pos = "Q1100103Brook",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

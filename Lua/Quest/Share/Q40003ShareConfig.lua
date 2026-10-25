main_id = 40003
local tbl = {}
local n = 4000302
local v = 4000303
local n2 = 4000304
local n3 = 4000305
local n4 = 4000306
local n5 = 4000307
local n6 = 4000308
local n7 = 4000309
tbl[1] = 4000301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
rewind_data = {}

rewind_data["4000309"] = {
    npcs = {
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q40003Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    gadgets = {
        {id = 70700017, pos = "Q40007_ThiefRout2", alias = "Q40003ThoarderIcon", scene_id = 3, room_id = 0}
    }
}

quest_data = {}

quest_data["4000304"] = {
    npcs = {
        {
            alias = "Npc242801",
            script = "Actor/Npc/TempNPC",
            id = 242801,
            pos = "Q40003Soldier",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["4000306"] = {
    npcs = {
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q40003Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    gadgets = {
        {id = 70700017, pos = "Q40007_ThiefRout2", alias = "Q40003ThoarderIcon", scene_id = 3, room_id = 0}
    }
}

quest_data["4000307"] = {
    npcs = {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q4000307_Paimon",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

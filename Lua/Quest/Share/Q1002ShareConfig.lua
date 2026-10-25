main_id = 1002
local tbl = {}
local n = 100202
local v = 100203
local n2 = 100204
local n3 = 100205
tbl[1] = 100201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
rewind_data = {}
rewind_data["100205"] = {}
quest_data = {}

quest_data["100201"] = {
    npcs = {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q1002_Paimon2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1002_Player2"}}
}

quest_data["100205"] = {
    npcs = {
        {
            alias = "Npc2002801",
            script = "Actor/Npc/TempNPC",
            id = 2002801,
            pos = "Q1002_XianRen",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1002_Player"}}
}

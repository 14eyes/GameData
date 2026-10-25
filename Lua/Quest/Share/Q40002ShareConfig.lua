main_id = 40002
local tbl = {}
local n = 4000202
local v = 4000203
local n2 = 4000209
local n3 = 4000210
local n4 = 4000211
tbl[1] = 4000201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}
rewind_data["4000201"] = {}
quest_data = {}

quest_data["4000209"] = {
    gadgets = {{id = 70710041, pos = "Q40002Search1", alias = "Q40002Search1", scene_id = 3, room_id = 0}}
}

quest_data["4000210"] = {
    gadgets = {{id = 70710042, pos = "Q40002Search2", alias = "Q40002Search2", scene_id = 3, room_id = 0}}
}

quest_data["4000211"] = {
    gadgets = {{id = 70710043, pos = "Q40002Search3", alias = "Q40002Search3", scene_id = 3, room_id = 0}}
}

quest_data["4000214"] = {
    npcs = {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q4000214_Paimon",
            sceneID = 3,
            roomID = 0,
            subIndex = 0
        }
    }
}

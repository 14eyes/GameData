main_id = 40001
local tbl = {}
local n = 4000102
local v = 4000103
tbl[1] = 4000101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
rewind_data = {}
rewind_data["4000101"] = {}
quest_data = {}

quest_data["4000101"] = {
    npcs = {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q4000101_Paimon",
            sceneID = 3,
            roomID = 0,
            subIndex = 0
        }
    }
}

quest_data["4000110"] = {
    npcs = {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q4000103_Paimon",
            sceneID = 3,
            roomID = 0,
            subIndex = 0
        }
    }
}

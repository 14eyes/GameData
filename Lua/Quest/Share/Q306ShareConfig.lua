main_id = 306
local tbl = {}
local n = 30601
local v = 30602
local n2 = 30603
local n3 = 30604
local n4 = 30607
local n5 = 30608
local n6 = 30609
local n7 = 30610
local n8 = 30611
local n9 = 30612
tbl[1] = 30600
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
sub_ids = tbl
rewind_data = {}

rewind_data["30601"] = {
    npcs = {{id = 1002, alias = "Ambor", script = "Actor/Quest/Q301/Ambor301", pos = "Q306DungeonAmbor"}}
}

rewind_data["30602"] = {
    npcs = {{id = 1002, alias = "Ambor", script = "Actor/Quest/Q301/Ambor301", pos = "Q306DungeonDoor"}}
}

quest_data = {}

quest_data["30600"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q306DungeonAmbor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["30610"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q306Ambor",
            scene_id = 20009,
            room_id = 0,
            data_index = 0
        }
    }
}

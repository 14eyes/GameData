main_id = 355
local tbl = {}
local n = 35502
local v = 35503
local n2 = 35504
local n3 = 35505
tbl[1] = 35501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
rewind_data = {}
rewind_data["35503"] = {npcs = {{id = 1005, alias = "Paimon", script = "Actor/Quest/Q352/Paimon", pos = "Q355Paimon1"}}}

rewind_data["35504"] = {
    npcs = {{id = 1005, alias = "Paimon", script = "Actor/Quest/Q352/Paimon", pos = "Q355Paimon2"}},
    items = {{id = 100135, pos = "Q355Stone", alias = "Tear", scene_id = 3, room_id = 0, data_index = 1}}
}

rewind_data["35505"] = {npcs = {{id = 1005, alias = "Paimon", script = "Actor/Quest/Q352/Paimon", pos = "Q355Paimon2"}}}
quest_data = {}
quest_data["35502"] = {npcs = {{id = 1005, alias = "Paimon", script = "Actor/Quest/Q352/Paimon", pos = "Q355Paimon1"}}}

quest_data["35503"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q355Paimon1",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    items = {{id = 100135, pos = "Q355Stone", alias = "Tear", scene_id = 3, room_id = 0, data_index = 1}}
}

quest_data["35505"] = {
    items = {{id = 100135, pos = "Q355Stone", alias = "Tear", scene_id = 3, room_id = 0, data_index = 1}}
}

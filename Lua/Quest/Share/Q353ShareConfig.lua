main_id = 353
local tbl = {}
local n = 35302
local v = 35303
local n2 = 35304
local n3 = 35309
local n4 = 35310
local n5 = 35311
local n6 = 35312
tbl[1] = 35301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}
rewind_data["35301"] = {npcs = {{id = 1005, alias = "Paimon", script = "Actor/Quest/Q352/Paimon", pos = "Q353Teach1"}}}
rewind_data["35302"] = {}
rewind_data["35303"] = {}
rewind_data["35304"] = {}
quest_data = {}

quest_data["35301"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q353Teach1",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    gadgets = {{id = 70300051, pos = "Q357Gaia1", alias = "MengdeEff", scene_id = 3, room_id = 0, data_index = 1}}
}

quest_data["35302"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q353SetAvatar"}}}
quest_data["35304"] = {gadgets = {}}

quest_data["35309"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q353PaimonAfterCs",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["35312"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q353SetAvatar"}}}

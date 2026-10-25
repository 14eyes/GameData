main_id = 74154
local tbl = {}
local n = 7415401
local v = 7415402
local n2 = 7415403
local n3 = 7415404
local n4 = 7415405
local n5 = 7415406
local n6 = 7415407
tbl[1] = 7415408
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7415401"] = {},
    ["7415402"] = {},
    ["7415403"] = {},
    ["7415404"] = {},
    ["7415405"] = {},
    ["7415406"] = {},
    ["7415407"] = {},
    ["7415408"] = {}
}

quest_data = {
    ["7415401"] = {
        npcs = {
            {
                id = 21253,
                alias = "Npc21253",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6392:3590.305,436.337,4530.821,0.000,76.637,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_6415:3593.179,437.660,4511.631,0.000,343.689,0.000]"}}
    },
    ["7415402"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_6949:3592.777,437.652,4512.503,0.000,156.104,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7415403"] = {},
    ["7415404"] = {},
    ["7415405"] = {},
    ["7415406"] = {},
    ["7415407"] = {
        npcs = {
            {
                id = 21264,
                alias = "Npc21264",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6407:3582.012,436.286,4517.056,0.000,213.198,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7415408"] = {}
}

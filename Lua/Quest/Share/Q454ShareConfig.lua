main_id = 454
local tbl = {}
local n = 45401
local v = 45410
local n2 = 45411
local n3 = 45412
local n4 = 45413
local n5 = 45414
local n6 = 45408
local n7 = 45409
local n8 = 45415
local n9 = 45402
local n10 = 45403
local n11 = 45404
local n12 = 45416
local n13 = 45417
local n14 = 45405
local n15 = 45406
tbl[1] = 45407
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
tbl[12] = n10
tbl[13] = n11
tbl[14] = n12
tbl[15] = n13
tbl[16] = n14
tbl[17] = n15
sub_ids = tbl
AmborData = {ID = 1002, Alias = "Ambor"}
RazorData = {ID = 1011, Alias = "Razor"}
WolfWoundData = {ID = 1165, Alias = "WolfWound"}
WolfBossData = {ID = 1176, Alias = "WolfBoss"}
Farmer1Data = {ID = 154301, Alias = "Npc154301"}
Farmer2Data = {ID = 163201, Alias = "Npc163201"}
rewind_data = {}

rewind_data["45406"] = {
    avatar = {scene_id = 3, pos = "Q45406PlayerTalk"},
    npcs = {
        {
            id = 1176,
            alias = "WolfBoss",
            script = "Actor/Npc/TempNPC",
            pos = "Q454WolfBoss",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            id = 1011,
            alias = "Razor",
            script = "Actor/Npc/TempNPC",
            pos = "Q45406Razor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q454AmborEnd",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["45407"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q45401Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Razor",
            script = "Actor/Npc/TempNPC",
            id = 1011,
            pos = "Q45401Razor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["45410"] = {gadgets = {{id = 70300074, pos = "Q45411BloodHint", alias = "BloodHint", scene_id = 3}}}

quest_data["45411"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q45411Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Razor",
            script = "Actor/Npc/TempNPC",
            id = 1011,
            pos = "Q45411Razor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    gadgets = {{id = 70300074, pos = "Q45411BloodHint", alias = "BloodHint", scene_id = 3}},
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q45411PlayerPos"}}
}

quest_data["45412"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q45413Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Razor",
            script = "Actor/Npc/TempNPC",
            id = 1011,
            pos = "Q45413Razor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "WolfWound",
            script = "Actor/Npc/RazorWolfWound",
            id = 1165,
            pos = "Q45413WoundWolf",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["45414"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q454Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Razor",
            script = "Actor/Npc/TempNPC",
            id = 1011,
            pos = "Q454Razor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "WolfWound",
            script = "Actor/Npc/RazorWolfWound",
            id = 1165,
            pos = "Q454WolfWound",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["45406"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q454AmborEnd",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q454Ambor2End",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            alias = "Razor",
            script = "Actor/Npc/TempNPC",
            id = 1011,
            pos = "Q45406Razor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "WolfBoss",
            script = "Actor/Npc/RazorWolfWound",
            id = 1165,
            pos = "Q454WolfBoss",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q45406PlayerTalk"}}
}

main_id = 40196
local tbl = {}
local n = 4019602
local v = 4019603
local n2 = 4019604
local n3 = 4019605
local n4 = 4019606
tbl[1] = 4019601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["4019601"] = {},
    ["4019602"] = {},
    ["4019603"] = {},
    ["4019604"] = {},
    ["4019605"] = {},
    ["4019606"] = {}
}

quest_data = {
    ["4019601"] = {},
    ["4019602"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100780:3604.532,506.535,4602.081,0.000,218.837,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100790:3604.635,506.535,4600.975,0.000,254.486,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100789:3602.640,506.535,4600.918,0.000,65.426,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4019603"] = {
        npcs = {
            {
                id = 15174,
                alias = "Npc15174",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200163:3736.269,442.806,3924.259,0.000,12.205,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4019604"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200167:3762.902,441.667,3929.483,0.000,42.028,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200179:3763.699,441.667,3930.516,0.000,222.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4019605"] = {},
    ["4019606"] = {}
}

main_id = 76650
local tbl = {}
local n = 7665001
local v = 7665002
local n2 = 7665003
local n3 = 7665004
local n4 = 7665005
tbl[1] = 7665006
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
    ["7665001"] = {},
    ["7665002"] = {},
    ["7665003"] = {},
    ["7665004"] = {},
    ["7665005"] = {},
    ["7665006"] = {}
}

quest_data = {
    ["7665001"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11805:1805.563,240.155,10361.520,0.000,118.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15521,
                alias = "Npc15521",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12541:1808.288,240.141,10362.190,0.000,253.552,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15522,
                alias = "Npc15522",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12542:1808.428,240.097,10360.380,0.000,279.765,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7665002"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11806:1900.978,232.324,10455.410,0.000,192.007,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7665003"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11806:1900.978,232.324,10455.410,0.000,192.007,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7665004"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11810:1902.631,232.328,10454.550,0.000,242.736,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_12543:1813.896,240.176,10359.450,0.000,64.880,0.000]"}}
    },
    ["7665005"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11811:1811.834,240.113,10361.140,0.000,62.321,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7665006"] = {}
}

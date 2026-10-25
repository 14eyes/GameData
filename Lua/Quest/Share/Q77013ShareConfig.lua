main_id = 77013
local tbl = {}
local n = 7701302
local v = 7701303
local n2 = 7701304
local n3 = 7701305
local n4 = 7701306
local n5 = 7701307
tbl[1] = 7701301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7701301"] = {},
    ["7701302"] = {},
    ["7701303"] = {},
    ["7701304"] = {},
    ["7701305"] = {},
    ["7701306"] = {},
    ["7701307"] = {}
}

quest_data = {
    ["7701301"] = {},
    ["7701302"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_7:66.733,-4.171,-465.882]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}}
    },
    ["7701303"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370800041:8596.705,205.714,7972.544,0.000,184.616,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"},
            {point_id = 1, scene_id = 3, pos = "[3_370800036:8597.095,205.279,7970.882,0.000,359.142,0.000]"}
        }
    },
    ["7701304"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_7:66.733,-4.171,-465.882]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}}
    },
    ["7701305"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200019:9372.785,377.354,6488.265]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"},
            {point_id = 1, scene_id = 3, pos = "[3_371200018:9369.855,377.354,6489.961]"}
        }
    },
    ["7701306"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_7:66.733,-4.171,-465.882]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}}
    },
    ["7701307"] = {}
}

main_id = 74183
local tbl = {}
local n = 7418302
local v = 7418303
local n2 = 7418304
local n3 = 7418307
local n4 = 7418305
local n5 = 7418309
local n6 = 7418312
local n7 = 7418306
local n8 = 7418313
local n9 = 7418311
local n10 = 7418310
local n11 = 7418308
tbl[1] = 7418301
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7418301"] = {},
    ["7418303"] = {},
    ["7418305"] = {},
    ["7418306"] = {},
    ["7418309"] = {},
    ["7418310"] = {}
}

quest_data = {
    ["7418301"] = {},
    ["7418302"] = {},
    ["7418303"] = {},
    ["7418304"] = {
        npcs = {
            {
                id = 21430,
                alias = "Npc21430",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101003:1495.071,703.497,4592.328,2.929,327.422,358.128]",
                scene_id = 11,
                room_id = 0,
                data_index = 1,
                inWater = true
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 11, pos = "[11_901101004:1494.143,702.766,4593.569,0.000,149.025,0.000]"},
            {point_id = 2, scene_id = 11, pos = "[11_901101025:1497.088,709.070,4625.528]"}
        }
    },
    ["7418305"] = {},
    ["7418306"] = {
        npcs = {
            {
                id = 21354,
                alias = "Npc21354",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101002:1574.560,665.228,4485.457,14.393,254.355,355.054]",
                scene_id = 11,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21430,
                alias = "Npc21430",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101003:1495.071,703.497,4592.328,2.929,327.422,358.128]",
                scene_id = 11,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7418307"] = {},
    ["7418308"] = {
        transmit_points = {
            {point_id = 5, scene_id = 11, pos = "[11_901101020:1513.968,638.761,4547.532,0.000,145.128,0.000]"}
        }
    },
    ["7418309"] = {},
    ["7418310"] = {
        transmit_points = {
            {point_id = 4, scene_id = 11, pos = "[11_901101006:1529.333,641.575,4515.283,0.000,143.854,0.000]"}
        }
    },
    ["7418311"] = {
        transmit_points = {
            {point_id = 3, scene_id = 11, pos = "[11_901101006:1529.333,641.575,4515.283,0.000,143.854,0.000]"}
        }
    },
    ["7418312"] = {
        npcs = {
            {
                id = 21354,
                alias = "Npc21354",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101002:1574.560,665.228,4485.457,14.393,254.355,355.054]",
                scene_id = 11,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 2, scene_id = 11, pos = "[11_901101005:1569.000,656.420,4486.000,0.000,125.776,0.000]"}
        }
    },
    ["7418313"] = {}
}

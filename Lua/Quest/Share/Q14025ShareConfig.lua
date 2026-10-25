main_id = 14025
local tbl = {}
local n = 1402502
local v = 1402503
local n2 = 1402504
local n3 = 1402505
tbl[1] = 1402501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1402501"] = {},
    ["1402502"] = {},
    ["1402503"] = {},
    ["1402504"] = {},
    ["1402505"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_87:-53.762,0.352,-14.487,0.000,265.100,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1402501"] = {
        npcs = {
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300425:2803.192,362.390,4146.373]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340300426:2804.430,362.295,4151.748,0.000,180.000,0.000]"}}
    },
    ["1402502"] = {
        npcs = {
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300458:2807.422,362.234,4146.424,0.000,83.040,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300430:2663.145,440.884,4338.797]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300457:2808.763,362.234,4146.323,0.000,290.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13883,
                alias = "Npc13883",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300449:2866.219,375.011,4163.900,0.000,266.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1402503"] = {
        npcs = {
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100599:3598.509,506.535,4623.123]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_83:-51.907,0.352,-15.817,0.000,81.020,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1402504"] = {
        npcs = {
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100599:3598.509,506.535,4623.123]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_83:-51.907,0.352,-15.817,0.000,81.020,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1402505"] = {
        npcs = {
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100602:3616.475,509.044,4625.731]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

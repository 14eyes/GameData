main_id = 5022
local tbl = {}
local n = 502203
local v = 502205
local n2 = 502204
local n3 = 502206
local n4 = 502207
local n5 = 502209
local n6 = 502208
local n7 = 502202
tbl[1] = 502201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["502201"] = {},
    ["502202"] = {},
    ["502203"] = {},
    ["502204"] = {},
    ["502205"] = {},
    ["502206"] = {},
    ["502207"] = {},
    ["502208"] = {},
    ["502209"] = {}
}

quest_data = {
    ["502201"] = {},
    ["502202"] = {},
    ["502203"] = {
        npcs = {
            {
                id = 14673,
                alias = "Npc14673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200504:-1559.521,-668.682,10577.470,0.000,132.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14565,
                alias = "Npc14565",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_83:38.400,8.982,8.918]",
                scene_id = 1099,
                room_id = 1,
                data_index = 2
            },
            {
                id = 14566,
                alias = "Npc14566",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200435:-1450.259,-651.041,10356.640]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14235,
                alias = "Npc14235",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["502204"] = {
        npcs = {
            {
                id = 14673,
                alias = "Npc14673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200504:-1559.521,-668.682,10577.470,0.000,132.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14565,
                alias = "Npc14565",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_83:38.400,8.982,8.918]",
                scene_id = 1099,
                room_id = 1,
                data_index = 2
            },
            {
                id = 14566,
                alias = "Npc14566",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200449:-1451.766,-651.074,10355.500]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14235,
                alias = "Npc14235",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350200449:-1451.766,-651.074,10355.500]"}}
    },
    ["502205"] = {
        npcs = {
            {
                id = 14673,
                alias = "Npc14673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200504:-1559.521,-668.682,10577.470,0.000,132.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14565,
                alias = "Npc14565",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_83:38.400,8.982,8.918]",
                scene_id = 1099,
                room_id = 1,
                data_index = 2
            },
            {
                id = 14566,
                alias = "Npc14566",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200435:-1450.259,-651.041,10356.640]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14235,
                alias = "Npc14235",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350200449:-1451.766,-651.074,10355.500]"}}
    },
    ["502206"] = {
        npcs = {
            {
                id = 14673,
                alias = "Npc14673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200504:-1559.521,-668.682,10577.470,0.000,132.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14565,
                alias = "Npc14565",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_83:38.400,8.982,8.918]",
                scene_id = 1099,
                room_id = 1,
                data_index = 2
            },
            {
                id = 14566,
                alias = "Npc14566",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200449:-1451.766,-651.074,10355.500]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14235,
                alias = "Npc14235",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350200449:-1451.766,-651.074,10355.500]"}}
    },
    ["502207"] = {
        npcs = {
            {
                id = 14673,
                alias = "Npc14673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200504:-1559.521,-668.682,10577.470,0.000,132.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14836,
                alias = "Npc14836",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200504:-1559.521,-668.682,10577.470,0.000,132.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14837,
                alias = "Npc14837",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14839,
                alias = "Npc14839",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 14838,
                alias = "Npc14838",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 14840,
                alias = "Npc14840",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14841,
                alias = "Npc14841",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 14843,
                alias = "Npc14843",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 14842,
                alias = "Npc14842",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 14844,
                alias = "Npc14844",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 14846,
                alias = "Npc14846",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 14845,
                alias = "Npc14845",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 14630,
                alias = "Npc14630",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 14860,
                alias = "Npc14860",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 14861,
                alias = "Npc14861",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 14862,
                alias = "Npc14862",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            },
            {
                id = 14863,
                alias = "Npc14863",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 17
            },
            {
                id = 14864,
                alias = "Npc14864",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 18
            },
            {
                id = 14565,
                alias = "Npc14565",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_83:38.400,8.982,8.918]",
                scene_id = 1099,
                room_id = 1,
                data_index = 19
            },
            {
                id = 14566,
                alias = "Npc14566",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200449:-1451.766,-651.074,10355.500]",
                scene_id = 3,
                room_id = 0,
                data_index = 20
            },
            {
                id = 14627,
                alias = "Npc14627",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 21
            },
            {
                id = 14629,
                alias = "Npc14629",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 22
            },
            {
                id = 14628,
                alias = "Npc14628",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 23
            },
            {
                id = 14235,
                alias = "Npc14235",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 24
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_350200449:-1451.766,-651.074,10355.500]"},
            {point_id = 4, scene_id = 1099, pos = "[1099_84:38.151,8.996,9.129]"}
        }
    },
    ["502208"] = {
        npcs = {
            {
                id = 14673,
                alias = "Npc14673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200504:-1559.521,-668.682,10577.470,0.000,132.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14565,
                alias = "Npc14565",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_84:38.151,8.996,9.129]",
                scene_id = 1099,
                room_id = 1,
                data_index = 2
            },
            {
                id = 14566,
                alias = "Npc14566",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200449:-1451.766,-651.074,10355.500]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14235,
                alias = "Npc14235",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["502209"] = {
        npcs = {
            {
                id = 14673,
                alias = "Npc14673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200504:-1559.521,-668.682,10577.470,0.000,132.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14565,
                alias = "Npc14565",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_83:38.400,8.982,8.918]",
                scene_id = 1099,
                room_id = 1,
                data_index = 2
            },
            {
                id = 14566,
                alias = "Npc14566",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200449:-1451.766,-651.074,10355.500]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14235,
                alias = "Npc14235",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200438:-1558.174,-668.570,10577.710,0.000,136.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

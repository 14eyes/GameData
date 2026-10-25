main_id = 71102
local tbl = {}
local n = 7110202
local v = 7110205
local n2 = 7110203
local n3 = 7110204
local n4 = 7110207
local n5 = 7110208
local n6 = 7110212
local n7 = 7110214
local n8 = 7110213
local n9 = 7110215
local n10 = 7110216
local n11 = 7110217
tbl[1] = 7110201
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
    ["7110201"] = {},
    ["7110203"] = {},
    ["7110204"] = {
        npcs = {
            {
                id = 2493,
                alias = "Npc2493",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311500028:2117.851,288.754,1528.504,0.000,275.943,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7110207"] = {},
    ["7110208"] = {
        npcs = {
            {
                id = 2491,
                alias = "Npc2491",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600013:2355.454,297.349,1518.102]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2492,
                alias = "Npc2492",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600014:2355.840,297.349,1519.962,0.000,201.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7110212"] = {},
    ["7110215"] = {},
    ["7110216"] = {},
    ["7110217"] = {
        npcs = {
            {
                id = 2498,
                alias = "Npc2498",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311500042:2414.095,343.159,2382.358,0.000,48.819,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2501,
                alias = "Npc2501",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311500043:2415.341,343.159,2383.417,0.000,243.001,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7110201"] = {
        npcs = {
            {
                id = 21094,
                alias = "Npc21094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500001:1567.925,10.715,2894.953,0.000,52.539,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2490,
                alias = "Npc2490",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310100257:1927.077,201.122,1125.765,0.000,346.033,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_311500002:1573.560,10.358,2897.942,0.000,338.844,0.000]"}}
    },
    ["7110202"] = {
        npcs = {
            {
                id = 21094,
                alias = "Npc21094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500001:1567.925,10.715,2894.953,0.000,52.539,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2490,
                alias = "Npc2490",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310100257:1927.077,201.122,1125.765,0.000,346.033,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7110203"] = {
        npcs = {
            {
                id = 2493,
                alias = "Npc2493",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311500028:2117.851,288.754,1528.504,0.000,275.943,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2490,
                alias = "Npc2490",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310100257:1927.077,201.122,1125.765,0.000,346.033,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7110204"] = {},
    ["7110205"] = {
        npcs = {
            {
                id = 21094,
                alias = "Npc21094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500001:1567.925,10.715,2894.953,0.000,52.539,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2490,
                alias = "Npc2490",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310100257:1927.077,201.122,1125.765,0.000,346.033,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_311500026:1935.080,277.280,1401.888,0.000,45.553,0.000]"}}
    },
    ["7110207"] = {
        npcs = {
            {
                id = 2491,
                alias = "Npc2491",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600013:2355.454,297.349,1518.102]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2492,
                alias = "Npc2492",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600014:2355.840,297.349,1519.962,0.000,201.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2507,
                alias = "Npc2507",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600014:2355.840,297.349,1519.962,0.000,201.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2508,
                alias = "Npc2508",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600014:2355.840,297.349,1519.962,0.000,201.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7110208"] = {
        npcs = {
            {
                id = 2507,
                alias = "Npc2507",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600014:2355.840,297.349,1519.962,0.000,201.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2508,
                alias = "Npc2508",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600014:2355.840,297.349,1519.962,0.000,201.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7110212"] = {
        npcs = {
            {
                id = 2507,
                alias = "Npc2507",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600014:2355.840,297.349,1519.962,0.000,201.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2508,
                alias = "Npc2508",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600014:2355.840,297.349,1519.962,0.000,201.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7110213"] = {},
    ["7110214"] = {
        npcs = {
            {
                id = 2507,
                alias = "Npc2507",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600014:2355.840,297.349,1519.962,0.000,201.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2508,
                alias = "Npc2508",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600014:2355.840,297.349,1519.962,0.000,201.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7110215"] = {
        npcs = {
            {
                id = 21094,
                alias = "Npc21094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500038:2359.046,330.399,1682.729,0.000,121.913,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7110216"] = {
        npcs = {
            {
                id = 2498,
                alias = "Npc2498",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311500042:2414.095,343.159,2382.358,0.000,48.819,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2501,
                alias = "Npc2501",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311500043:2415.341,343.159,2383.417,0.000,243.001,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7110217"] = {}
}

main_id = 4023
local tbl = {}
local n = 402302
local v = 402311
local n2 = 402303
local n3 = 402304
local n4 = 402305
local n5 = 402306
local n6 = 402307
local n7 = 402308
local n8 = 402312
local n9 = 402309
local n10 = 402310
tbl[1] = 402301
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["402301"] = {},
    ["402302"] = {},
    ["402303"] = {},
    ["402305"] = {},
    ["402307"] = {},
    ["402308"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_75:-49.464,0.352,-16.390,0.000,303.808,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13727,
                alias = "Npc13727",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300201:2736.763,395.871,4189.003,0.000,337.192,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["402309"] = {},
    ["402311"] = {},
    ["402312"] = {},
    ["402306"] = {
        npcs = {
            {
                id = 5087,
                alias = "Npc5087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1083_77:-2.940,0.011,-13.765,0.000,159.719,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["402301"] = {},
    ["402302"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_340100311:4520.077,157.991,4561.173]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["402303"] = {
        npcs = {
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1086_43:2.507,17.061,-0.063,0.000,272.917,0.000]",
                scene_id = 1086,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1079,
                alias = "Npc1079",
                script = "Actor/Npc/TempNPC",
                pos = "[1086_66:4.114,17.056,6.034,0.000,135.074,0.000]",
                scene_id = 1086,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["402304"] = {
        npcs = {
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1086_43:2.507,17.061,-0.063,0.000,272.917,0.000]",
                scene_id = 1086,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1079,
                alias = "Npc1079",
                script = "Actor/Npc/TempNPC",
                pos = "[1086_66:4.114,17.056,6.034,0.000,135.074,0.000]",
                scene_id = 1086,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["402305"] = {
        npcs = {
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1086_65:5.036,17.056,5.157,0.000,309.869,0.000]",
                scene_id = 1086,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_67:-48.110,0.352,-14.059,0.000,135.445,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1079,
                alias = "Npc1079",
                script = "Actor/Npc/TempNPC",
                pos = "[1086_66:4.114,17.056,6.034,0.000,135.074,0.000]",
                scene_id = 1086,
                room_id = 1,
                data_index = 3
            },
            {
                id = 5087,
                alias = "Npc5087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1083_77:-2.940,0.011,-13.765,0.000,159.719,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["402306"] = {
        npcs = {
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1086_65:5.036,17.056,5.157,0.000,309.869,0.000]",
                scene_id = 1086,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_67:-48.110,0.352,-14.059,0.000,135.445,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1079,
                alias = "Npc1079",
                script = "Actor/Npc/TempNPC",
                pos = "[1086_66:4.114,17.056,6.034,0.000,135.074,0.000]",
                scene_id = 1086,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["402307"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_340300202:2708.435,405.132,4255.270]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_75:-49.464,0.352,-16.390,0.000,303.808,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13727,
                alias = "Npc13727",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300201:2736.763,395.871,4189.003,0.000,337.192,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5237,
                alias = "Npc5237",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340300202:2708.435,405.132,4255.270]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["402308"] = {
        npcs = {
            {
                id = 5237,
                alias = "Npc5237",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340300202:2708.435,405.132,4255.270]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["402309"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300195:2640.334,462.164,4273.938,0.000,279.901,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["402310"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300195:2640.334,462.164,4273.938,0.000,279.901,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["402311"] = {
        npcs = {
            {
                id = 5202,
                alias = "Npc5202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340800338:4468.437,121.820,4558.240,0.000,246.534,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["402312"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300194:2814.382,373.182,4182.042,0.000,139.739,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13727,
                alias = "Npc13727",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300201:2736.763,395.871,4189.003,0.000,337.192,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13728,
                alias = "Npc13728",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300330:2744.031,387.283,4180.471,0.000,116.830,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13729,
                alias = "Npc13729",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300331:2756.851,379.489,4164.801,0.000,11.806,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13732,
                alias = "Npc13732",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300336:2815.307,373.183,4181.017,0.000,318.282,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5237,
                alias = "Npc5237",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340300202:2708.435,405.132,4255.270]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13731,
                alias = "Npc13731",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300337:2757.460,379.489,4165.435,0.000,250.960,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    }
}

main_id = 4005
local tbl = {}
local n = 400515
local v = 400514
local n2 = 400502
local n3 = 400518
local n4 = 400517
local n5 = 400503
local n6 = 400504
local n7 = 400505
local n8 = 400506
local n9 = 400507
local n10 = 400508
local n11 = 400509
local n12 = 400510
local n13 = 400511
local n14 = 400516
local n15 = 400512
local n16 = 400513
tbl[1] = 400501
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
tbl[18] = n16
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["400501"] = {},
    ["400502"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100278:3493.662,429.882,4608.396,0.000,324.295,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["400504"] = {
        npcs = {
            {
                id = 5033,
                alias = "Npc5033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100276:3605.842,428.242,4579.608,0.000,302.192,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["400505"] = {},
    ["400506"] = {},
    ["400507"] = {},
    ["400508"] = {},
    ["400509"] = {},
    ["400510"] = {},
    ["400511"] = {},
    ["400512"] = {},
    ["400513"] = {},
    ["400503"] = {
        npcs = {
            {
                id = 5033,
                alias = "Npc5033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100276:3605.842,428.242,4579.608,0.000,302.192,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["400501"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100054:3495.994,429.860,4609.924,0.000,56.417,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100053:3492.125,429.734,4612.185,0.000,150.741,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100115:3494.126,429.834,4612.569,0.000,185.991,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["400502"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100278:3493.662,429.882,4608.396,0.000,324.295,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5033,
                alias = "Npc5033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100042:3609.346,428.195,4583.345,0.000,102.673,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100049:3601.654,428.195,4581.615,0.000,70.803,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5079,
                alias = "Npc5079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100049:3601.654,428.195,4581.615,0.000,70.803,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["400503"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100278:3493.662,429.882,4608.396,0.000,324.295,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100049:3601.654,428.195,4581.615,0.000,70.803,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_340100044:3602.792,428.195,4578.994,0.000,334.399,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5079,
                alias = "Npc5079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100049:3601.654,428.195,4581.615,0.000,70.803,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100043:3602.114,428.195,4578.541,0.000,343.816,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100043:3602.114,428.195,4578.541,0.000,343.816,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["400504"] = {
        npcs = {
            {
                id = 5033,
                alias = "Npc5033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100276:3605.842,428.242,4579.608,0.000,302.192,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100049:3601.654,428.195,4581.615,0.000,70.803,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5079,
                alias = "Npc5079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100049:3601.654,428.195,4581.615,0.000,70.803,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340100055:3419.100,446.167,4563.300,0.000,203.383,0.000]"}}
    },
    ["400505"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_340100050:3418.300,446.167,4563.643,0.000,181.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["400506"] = {},
    ["400507"] = {},
    ["400508"] = {},
    ["400509"] = {
        npcs = {
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200010:3482.900,460.363,3654.684,0.000,304.498,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5104,
                alias = "Npc5104",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200036:3459.849,459.092,3664.195,0.000,343.913,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5105,
                alias = "Npc5105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200035:3460.813,459.090,3664.320,0.000,338.005,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["400510"] = {
        npcs = {
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_24:-0.019,7.280,171.161]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_26:1.769,7.281,172.984,0.000,321.993,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 2
            },
            {
                id = 5100,
                alias = "Npc5100",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1085_18:1.166,7.000,175.704,0.000,191.207,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["400511"] = {
        npcs = {
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_31:1.915,-0.024,39.924]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_32:-4.955,-0.024,39.231]",
                scene_id = 1085,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_27:-6.088,-1.745,56.923,0.000,178.253,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13316,
                alias = "Npc13316",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_30:-0.076,41.851,79.501,0.000,180.136,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 4
            },
            {
                id = 5100,
                alias = "Npc5100",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1085_18:1.166,7.000,175.704,0.000,191.207,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_30:-0.076,41.851,79.501,0.000,180.136,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["400512"] = {
        npcs = {
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_31:1.915,-0.024,39.924]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_32:-4.955,-0.024,39.231]",
                scene_id = 1085,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_27:-6.088,-1.745,56.923,0.000,178.253,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13316,
                alias = "Npc13316",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_30:-0.076,41.851,79.501,0.000,180.136,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 4
            },
            {
                id = 5100,
                alias = "Npc5100",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1085_18:1.166,7.000,175.704,0.000,191.207,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_30:-0.076,41.851,79.501,0.000,180.136,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["400513"] = {
        npcs = {
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_31:1.915,-0.024,39.924]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_32:-4.955,-0.024,39.231]",
                scene_id = 1085,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_27:-6.088,-1.745,56.923,0.000,178.253,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13316,
                alias = "Npc13316",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_30:-0.076,41.851,79.501,0.000,180.136,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 4
            },
            {
                id = 5100,
                alias = "Npc5100",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1085_18:1.166,7.000,175.704,0.000,191.207,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_30:-0.076,41.851,79.501,0.000,180.136,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["400514"] = {},
    ["400515"] = {},
    ["400516"] = {},
    ["400517"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_340100044:3602.792,428.195,4578.994,0.000,334.399,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100043:3602.114,428.195,4578.541,0.000,343.816,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100043:3602.114,428.195,4578.541,0.000,343.816,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["400518"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_340100044:3602.792,428.195,4578.994,0.000,334.399,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100043:3602.114,428.195,4578.541,0.000,343.816,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100043:3602.114,428.195,4578.541,0.000,343.816,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

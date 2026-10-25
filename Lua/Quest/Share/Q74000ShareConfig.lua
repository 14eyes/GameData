main_id = 74000
local tbl = {}
local n = 7400021
local v = 7400002
local n2 = 7400005
local n3 = 7400020
local n4 = 7400006
local n5 = 7400007
local n6 = 7400017
local n7 = 7400008
local n8 = 7400009
local n9 = 7400011
local n10 = 7400019
local n11 = 7400013
local n12 = 7400004
local n13 = 7400012
local n14 = 7400015
local n15 = 7400016
local n16 = 7400018
local n17 = 7400003
local n18 = 7400010
local n19 = 7400014
tbl[1] = 7400001
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
tbl[19] = n17
tbl[20] = n18
tbl[21] = n19
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7400001"] = {},
    ["7400002"] = {},
    ["7400005"] = {},
    ["7400006"] = {},
    ["7400007"] = {},
    ["7400015"] = {},
    ["7400016"] = {},
    ["7400017"] = {},
    ["7400018"] = {},
    ["7400020"] = {},
    ["7400021"] = {}
}

quest_data = {
    ["7400001"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400001_N20973",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20981,
                alias = "Npc20981",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20981",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20980,
                alias = "Npc20980",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20980",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N21033",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7400002"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400001_N20973",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20981,
                alias = "Npc20981",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20981",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20980,
                alias = "Npc20980",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20980",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6626:4004.797,547.235,4968.711,0.000,120.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 21034,
                alias = "Npc21034",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6627:4006.475,547.235,4969.024,0.000,233.676,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5203,
                alias = "Npc5203",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6627:4006.475,547.235,4969.024,0.000,233.676,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["7400003"] = {},
    ["7400004"] = {
        npcs = {
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N21033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q7400004_Player"}}
    },
    ["7400005"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400001_N20973",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20981,
                alias = "Npc20981",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20981",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20980,
                alias = "Npc20980",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20980",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7400006"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400001_N20973",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20981,
                alias = "Npc20981",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20981",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20980,
                alias = "Npc20980",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20980",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N21033",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 21034,
                alias = "Npc21034",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400006_N21034",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5203,
                alias = "Npc5203",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400006_N21034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["7400007"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400001_N20973",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20981,
                alias = "Npc20981",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20981",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20980,
                alias = "Npc20980",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20980",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N21033",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 21034,
                alias = "Npc21034",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400006_N21034",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5203,
                alias = "Npc5203",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400006_N21034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["7400008"] = {
        npcs = {
            {
                id = 20981,
                alias = "Npc20981",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20981",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7400009"] = {
        npcs = {
            {
                id = 20980,
                alias = "Npc20980",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20980",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7400010"] = {},
    ["7400011"] = {},
    ["7400012"] = {},
    ["7400013"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400001_N20973",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7400014"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400014_N20973",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7400015"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400015_N20973_4348",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20981,
                alias = "Npc20981",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400015_N20981",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20980,
                alias = "Npc20980",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400015_N20980",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N21033",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7400016"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400015_N20973_4348",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20981,
                alias = "Npc20981",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400015_N20981",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20980,
                alias = "Npc20980",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400015_N20980",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N21033",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7400017"] = {},
    ["7400018"] = {},
    ["7400019"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400001_N20973",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7400020"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400001_N20973",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20981,
                alias = "Npc20981",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20981",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20980,
                alias = "Npc20980",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20980",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6626:4004.797,547.235,4968.711,0.000,120.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 21034,
                alias = "Npc21034",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6627:4006.475,547.235,4969.024,0.000,233.676,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5203,
                alias = "Npc5203",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6627:4006.475,547.235,4969.024,0.000,233.676,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["7400021"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7400001_N20973",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20981,
                alias = "Npc20981",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20981",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20980,
                alias = "Npc20980",
                script = "Actor/Npc/TempNPC",
                pos = "Q7400001_N20980",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6626:4004.797,547.235,4968.711,0.000,120.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

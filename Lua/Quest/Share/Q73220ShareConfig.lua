main_id = 73220
local tbl = {}
local n = 7322002
local v = 7322011
local n2 = 7322003
local n3 = 7322009
local n4 = 7322012
local n5 = 7322010
local n6 = 7322013
local n7 = 7322005
local n8 = 7322014
local n9 = 7322004
local n10 = 7322006
local n11 = 7322017
local n12 = 7322022
local n13 = 7322018
local n14 = 7322015
local n15 = 7322019
local n16 = 7322007
local n17 = 7322016
local n18 = 7322024
local n19 = 7322021
local n20 = 7322020
local n21 = 7322023
local n22 = 7322008
tbl[1] = 7322001
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
tbl[22] = n20
tbl[23] = n21
tbl[24] = n22
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7322001"] = {},
    ["7322002"] = {},
    ["7322003"] = {},
    ["7322004"] = {},
    ["7322005"] = {},
    ["7322006"] = {
        npcs = {
            {
                id = 4296,
                alias = "Npc4296",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7322006_N20723",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7322007"] = {},
    ["7322009"] = {},
    ["7322010"] = {},
    ["7322011"] = {},
    ["7322012"] = {},
    ["7322013"] = {},
    ["7322014"] = {},
    ["7322015"] = {},
    ["7322016"] = {},
    ["7322018"] = {},
    ["7322019"] = {},
    ["7322022"] = {},
    ["7322024"] = {}
}

quest_data = {
    ["7322001"] = {},
    ["7322002"] = {},
    ["7322003"] = {},
    ["7322004"] = {
        npcs = {
            {
                id = 4296,
                alias = "Npc4296",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7322004_N4296",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20723,
                alias = "Npc20723",
                script = "Actor/Npc/TempNPC",
                pos = "Q7322004_N4296",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7322005"] = {
        npcs = {
            {
                id = 4296,
                alias = "Npc4296",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T7322014_N20723",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20723,
                alias = "Npc20723",
                script = "Actor/Npc/TempNPC",
                pos = "T7322014_N20723",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7322006"] = {
        npcs = {
            {
                id = 4296,
                alias = "Npc4296",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7322006_N20723",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20723,
                alias = "Npc20723",
                script = "Actor/Npc/TempNPC",
                pos = "Q7322006_N20723",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7322007"] = {},
    ["7322008"] = {},
    ["7322009"] = {},
    ["7322010"] = {},
    ["7322011"] = {
        npcs = {
            {
                id = 4296,
                alias = "Npc4296",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T7322011_N20723",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20723,
                alias = "Npc20723",
                script = "Actor/Npc/TempNPC",
                pos = "T7322011_N20723",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7322012"] = {
        npcs = {
            {
                id = 20846,
                alias = "Npc20846",
                script = "Actor/Npc/TempNPC",
                pos = "T7322012_N20846",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7322013"] = {
        npcs = {
            {
                id = 20846,
                alias = "Npc20846",
                script = "Actor/Npc/TempNPC",
                pos = "T7322012_N20846",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7322014"] = {
        npcs = {
            {
                id = 4296,
                alias = "Npc4296",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T7322014_N20723",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20723,
                alias = "Npc20723",
                script = "Actor/Npc/TempNPC",
                pos = "T7322014_N20723",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7322015"] = {
        npcs = {
            {
                id = 4296,
                alias = "Npc4296",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N7322017_JD",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20723,
                alias = "Npc20723",
                script = "Actor/Npc/TempNPC",
                pos = "N7322017_JD",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7322016"] = {
        npcs = {
            {
                id = 4296,
                alias = "Npc4296",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T7322016_N20723",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20723,
                alias = "Npc20723",
                script = "Actor/Npc/TempNPC",
                pos = "T7322016_N20723",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7322017"] = {
        npcs = {
            {
                id = 4296,
                alias = "Npc4296",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N7322017_JD",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20723,
                alias = "Npc20723",
                script = "Actor/Npc/TempNPC",
                pos = "N7322017_JD",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7322018"] = {
        npcs = {
            {
                id = 20846,
                alias = "Npc20846",
                script = "Actor/Npc/TempNPC",
                pos = "T7322018_N20846",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4296,
                alias = "Npc4296",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N7322017_JD",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20723,
                alias = "Npc20723",
                script = "Actor/Npc/TempNPC",
                pos = "N7322017_JD",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7322019"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q7322015_Trans"}}},
    ["7322020"] = {},
    ["7322021"] = {},
    ["7322022"] = {
        npcs = {
            {
                id = 4296,
                alias = "Npc4296",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N7322017_JD",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20723,
                alias = "Npc20723",
                script = "Actor/Npc/TempNPC",
                pos = "N7322017_JD",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7322023"] = {},
    ["7322024"] = {}
}

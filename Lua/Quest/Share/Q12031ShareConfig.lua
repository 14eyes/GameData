main_id = 12031
local tbl = {}
local n = 1203102
local v = 1203103
local n2 = 1203107
local n3 = 1203109
local n4 = 1203108
local n5 = 1203104
local n6 = 1203110
local n7 = 1203105
local n8 = 1203111
local n9 = 1203112
local n10 = 1203106
tbl[1] = 1203101
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
    ["1203101"] = {},
    ["1203102"] = {},
    ["1203103"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203102_T1203102_N3107",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1203104"] = {},
    ["1203105"] = {},
    ["1203106"] = {},
    ["1203107"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203102_T1203102_N3107",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1203108"] = {},
    ["1203109"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203102_T1203102_N3107",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1203110"] = {},
    ["1203111"] = {},
    ["1203112"] = {}
}

quest_data = {
    ["1203101"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1202803_T1202803_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203102"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203102_T1203102_N3107",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203103"] = {
        npcs = {
            {
                id = 12400,
                alias = "Npc12400",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203103_N12400",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203104"] = {},
    ["1203105"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203104_T1203104_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1203104_T1203104_N10000005"}}
    },
    ["1203106"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1202911_N1034",
                scene_id = 1066,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1203107"] = {
        npcs = {
            {
                id = 12401,
                alias = "Npc12401",
                script = "Actor/Npc/TempNPC",
                pos = "L1203102Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203108"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1203108_N1005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203109"] = {},
    ["1203110"] = {},
    ["1203111"] = {},
    ["1203112"] = {
        npcs = {
            {
                id = 12368,
                alias = "Npc12368",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203112_N12368",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12369,
                alias = "Npc12369",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203112_N12369",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12405,
                alias = "Npc12405",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203112_N12405",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

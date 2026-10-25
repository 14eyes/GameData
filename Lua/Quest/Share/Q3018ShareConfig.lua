main_id = 3018
local tbl = {}
local n = 301802
local v = 301803
local n2 = 301804
local n3 = 301805
local n4 = 301806
local n5 = 301807
local n6 = 301808
local n7 = 301809
local n8 = 301810
local n9 = 301811
tbl[1] = 301801
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["301801"] = {},
    ["301802"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q301801_T301801_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["301803"] = {},
    ["301804"] = {},
    ["301805"] = {},
    ["301806"] = {},
    ["301807"] = {},
    ["301808"] = {},
    ["301809"] = {},
    ["301810"] = {},
    ["301811"] = {}
}

quest_data = {
    ["301801"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q301801_T301801_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["301802"] = {},
    ["301803"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q301801_T301801_N1053_4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["301804"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "301804trigger",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1077, pos = "Q301805_T301805_N10000005"}}
    },
    ["301805"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q301805_T301805_N1053",
                scene_id = 1077,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["301806"] = {
        npcs = {
            {
                id = 12750,
                alias = "Npc12750",
                script = "Actor/Npc/TempNPC",
                pos = "Q301806_T301806_N12750",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12751,
                alias = "Npc12751",
                script = "Actor/Npc/TempNPC",
                pos = "Q301806_T301806_N12751",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q301804_T301804_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["301807"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q301804_T301804_N10000005"}}},
    ["301808"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q301804_T301804_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["301809"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q301809_T301809_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["301810"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q301810_N1059",
                scene_id = 1077,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q301811_N10000005"}}
    },
    ["301811"] = {
        npcs = {
            {
                id = 12701,
                alias = "Npc12701",
                script = "Actor/Npc/TempNPC",
                pos = "Q301811_N12701",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4400,
                alias = "Npc4400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q301811_N12701",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

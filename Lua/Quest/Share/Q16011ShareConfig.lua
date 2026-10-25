main_id = 16011
local tbl = {}
local n = 1601102
local v = 1601103
local n2 = 1601105
local n3 = 1601104
local n4 = 1601106
local n5 = 1601107
local n6 = 1601108
local n7 = 1601109
local n8 = 1601110
local n9 = 1601111
local n10 = 1601112
tbl[1] = 1601101
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

cancel_action = {
    CLIENT = {},
    SERVER = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"189"}}, QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}}
}

rewind_data = {
    ["1601101"] = {},
    ["1601102"] = {},
    ["1601103"] = {
        avatar = {
            offline_dungeon_id = 1308,
            scene_id = 20336,
            pos = "[20336_3:659.164,99.312,749.170,0.000,293.488,0.000]"
        }
    },
    ["1601104"] = {
        avatar = {
            offline_dungeon_id = 1308,
            scene_id = 20336,
            pos = "[20336_5:378.609,100.744,570.467,0.000,263.464,0.000]"
        }
    },
    ["1601105"] = {},
    ["1601106"] = {},
    ["1601107"] = {},
    ["1601109"] = {},
    ["1601110"] = {},
    ["1601111"] = {},
    ["1601112"] = {}
}

quest_data = {
    ["1601101"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14921:1897.969,201.452,-1273.293]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1308, pos = "[20336_3:659.164,99.312,749.170,0.000,293.488,0.000]"}}
    },
    ["1601102"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[20336_3:659.164,99.312,749.170,0.000,293.488,0.000]",
                scene_id = 20336,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14921:1897.969,201.452,-1273.293]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1601103"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14921:1897.969,201.452,-1273.293]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1601104"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14921:1897.969,201.452,-1273.293]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1601105"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14921:1897.969,201.452,-1273.293]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1601106"] = {},
    ["1601107"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[20336_2:387.824,111.946,237.497,0.000,180.000,0.000]",
                scene_id = 20336,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14921:1897.969,201.452,-1273.293]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1601108"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14921:1897.969,201.452,-1273.293]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1601109"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14921:1897.969,201.452,-1273.293]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16279,
                alias = "Npc16279",
                script = "Actor/Npc/TempNPC",
                pos = "[20336_1:387.989,123.180,197.075]",
                scene_id = 20336,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1601110"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14921:1897.969,201.452,-1273.293]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_14921:1897.969,201.452,-1273.293]"}}
    },
    ["1601111"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14921:1897.969,201.452,-1273.293]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_14921:1897.969,201.452,-1273.293]"}}
    },
    ["1601112"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14920:1901.891,200.883,-1273.284,8.000,170.529,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

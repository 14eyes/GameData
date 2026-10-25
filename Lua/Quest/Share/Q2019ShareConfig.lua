main_id = 2019
local tbl = {}
local n = 201901
local v = 201902
local n2 = 201903
local n3 = 201904
tbl[1] = 201905
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["201901"] = {},
    ["201902"] = {
        npcs = {
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q201901Ying",
                scene_id = 20114,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["201903"] = {
        npcs = {
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q201901Ying",
                scene_id = 20114,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["201904"] = {
        npcs = {
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q201901Ying",
                scene_id = 20114,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["201905"] = {}
}

quest_data = {
    ["201901"] = {
        npcs = {
            {
                id = 1017,
                alias = "Npc1017",
                script = "Actor/Npc/TempNPC",
                pos = "Q201901Lady",
                scene_id = 20114,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q201901Ying",
                scene_id = 20114,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q201901Jiutiao",
                scene_id = 20114,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3053,
                alias = "Npc3053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201804Xiaoxing",
                scene_id = 1065,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q201803Jiutiao",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3058,
                alias = "Npc3058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3055,
                alias = "Npc3055",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3056,
                alias = "Npc3056",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder6",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3059,
                alias = "Npc3059",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3025,
                alias = "Npc3025",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder7",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 3175,
                alias = "Npc3175",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Target",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3176,
                alias = "Npc3176",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3177,
                alias = "Npc3177",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3061,
                alias = "Npc3061",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3178,
                alias = "Npc3178",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12138,
                alias = "Npc12138",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier1",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12139,
                alias = "Npc12139",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier2",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12140,
                alias = "Npc12140",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12141,
                alias = "Npc12141",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12142,
                alias = "Npc12142",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier8",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12143,
                alias = "Npc12143",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier6",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12144,
                alias = "Npc12144",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12145,
                alias = "Npc12145",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            }
        }
    },
    ["201902"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q201803Jiutiao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3058,
                alias = "Npc3058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3055,
                alias = "Npc3055",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3056,
                alias = "Npc3056",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder6",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3059,
                alias = "Npc3059",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3025,
                alias = "Npc3025",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder7",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3053,
                alias = "Npc3053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201804Xiaoxing",
                scene_id = 1065,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q201803Jiutiao",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3058,
                alias = "Npc3058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3055,
                alias = "Npc3055",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3056,
                alias = "Npc3056",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder6",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3059,
                alias = "Npc3059",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3025,
                alias = "Npc3025",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder7",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 3175,
                alias = "Npc3175",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Target",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3176,
                alias = "Npc3176",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3177,
                alias = "Npc3177",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3061,
                alias = "Npc3061",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3178,
                alias = "Npc3178",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12138,
                alias = "Npc12138",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier1",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12139,
                alias = "Npc12139",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier2",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12140,
                alias = "Npc12140",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12141,
                alias = "Npc12141",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12142,
                alias = "Npc12142",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier8",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12143,
                alias = "Npc12143",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier6",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12144,
                alias = "Npc12144",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12145,
                alias = "Npc12145",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            }
        }
    },
    ["201903"] = {
        npcs = {
            {
                id = 3053,
                alias = "Npc3053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201804Xiaoxing",
                scene_id = 1065,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q201803Jiutiao",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3058,
                alias = "Npc3058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3055,
                alias = "Npc3055",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3056,
                alias = "Npc3056",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder6",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3059,
                alias = "Npc3059",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3025,
                alias = "Npc3025",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder7",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 3175,
                alias = "Npc3175",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Target",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3176,
                alias = "Npc3176",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3177,
                alias = "Npc3177",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3061,
                alias = "Npc3061",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3178,
                alias = "Npc3178",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12138,
                alias = "Npc12138",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier1",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12139,
                alias = "Npc12139",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier2",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12140,
                alias = "Npc12140",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12141,
                alias = "Npc12141",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12142,
                alias = "Npc12142",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier8",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12143,
                alias = "Npc12143",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier6",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12144,
                alias = "Npc12144",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12145,
                alias = "Npc12145",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            }
        }
    },
    ["201904"] = {
        npcs = {
            {
                id = 3053,
                alias = "Npc3053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201804Xiaoxing",
                scene_id = 1065,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q201803Jiutiao",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3058,
                alias = "Npc3058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3055,
                alias = "Npc3055",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3056,
                alias = "Npc3056",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder6",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3059,
                alias = "Npc3059",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3025,
                alias = "Npc3025",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder7",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 3175,
                alias = "Npc3175",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Target",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3176,
                alias = "Npc3176",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3177,
                alias = "Npc3177",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3061,
                alias = "Npc3061",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3178,
                alias = "Npc3178",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12138,
                alias = "Npc12138",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier1",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12139,
                alias = "Npc12139",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier2",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12140,
                alias = "Npc12140",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12141,
                alias = "Npc12141",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12142,
                alias = "Npc12142",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier8",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12143,
                alias = "Npc12143",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier6",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12144,
                alias = "Npc12144",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12145,
                alias = "Npc12145",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q202001Player1"}}
    },
    ["201905"] = {
        npcs = {
            {
                id = 3053,
                alias = "Npc3053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201804Xiaoxing",
                scene_id = 1065,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q201803Jiutiao",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3058,
                alias = "Npc3058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3055,
                alias = "Npc3055",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3056,
                alias = "Npc3056",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder6",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3059,
                alias = "Npc3059",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3025,
                alias = "Npc3025",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder7",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 3175,
                alias = "Npc3175",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Target",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3176,
                alias = "Npc3176",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3177,
                alias = "Npc3177",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3061,
                alias = "Npc3061",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3178,
                alias = "Npc3178",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12138,
                alias = "Npc12138",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier1",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12139,
                alias = "Npc12139",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier2",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12140,
                alias = "Npc12140",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12141,
                alias = "Npc12141",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12142,
                alias = "Npc12142",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier8",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12143,
                alias = "Npc12143",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier6",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12144,
                alias = "Npc12144",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12145,
                alias = "Npc12145",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q201901Ying",
                scene_id = 20114,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1017,
                alias = "Npc1017",
                script = "Actor/Npc/TempNPC",
                pos = "Q201901Lady",
                scene_id = 20114,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

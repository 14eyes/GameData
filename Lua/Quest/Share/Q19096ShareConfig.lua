main_id = 19096
local tbl = {}
local n = 1909601
local v = 1909602
local n2 = 1909604
local n3 = 1909605
local n4 = 1909615
local n5 = 1909616
local n6 = 1909609
local n7 = 1909611
local n8 = 1909612
local n9 = 1909618
local n10 = 1909617
local n11 = 1909614
local n12 = 1909613
local n13 = 1909608
tbl[1] = 1909619
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133002156"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120383"}}
local qUEST_EXEC_MODIFY_WEATHER_AREA = {}
local tbl4 = {}
local str2 = "0"
tbl4[1] = "1015"
tbl4[2] = str2
qUEST_EXEC_MODIFY_WEATHER_AREA[1] = tbl4
server.QUEST_EXEC_MODIFY_WEATHER_AREA = qUEST_EXEC_MODIFY_WEATHER_AREA
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1909601"] = {},
    ["1909602"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_80:1.615,0.007,-1.158,0.000,269.300,0.000]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1533,
                alias = "Npc1533",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4235:1795.989,218.299,-377.880,0.000,68.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1529,
                alias = "Npc1529",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4471:1751.807,221.863,-394.909,0.000,299.960,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1018_81:-1.381,0.010,-2.312,0.000,84.429,0.000]",
                scene_id = 1018,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["1909604"] = {
        npcs = {
            {
                id = 1533,
                alias = "Npc1533",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4235:1795.989,218.299,-377.880,0.000,68.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1529,
                alias = "Npc1529",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4471:1751.807,221.863,-394.909,0.000,299.960,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1909605"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1909608"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1533,
                alias = "Npc1533",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4474:1820.113,218.321,-401.971,0.000,342.949,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1529,
                alias = "Npc1529",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4234:1773.349,221.863,-383.565,0.000,170.993,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1909619"] = {},
    ["1909609"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1529,
                alias = "Npc1529",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4234:1773.349,221.863,-383.565,0.000,170.993,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

quest_data = {
    ["1909601"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_80:1.615,0.007,-1.158,0.000,269.300,0.000]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1533,
                alias = "Npc1533",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4235:1795.989,218.299,-377.880,0.000,68.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1529,
                alias = "Npc1529",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4471:1751.807,221.863,-394.909,0.000,299.960,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1018_81:-1.381,0.010,-2.312,0.000,84.429,0.000]",
                scene_id = 1018,
                room_id = 1,
                data_index = 4
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4362:1769.771,222.123,-399.388,0.000,12.703,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4362:1769.771,222.123,-399.388,0.000,12.703,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1018, pos = "[1018_83:-0.021,0.015,1.982,0.000,180.000,0.000]"}}
    },
    ["1909602"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[1018_80:1.615,0.007,-1.158,0.000,269.300,0.000]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[1018_80:1.615,0.007,-1.158,0.000,269.300,0.000]",
                scene_id = 1018,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1909604"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4472:1775.770,221.863,-387.057,0.000,215.560,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4472:1775.770,221.863,-387.057,0.000,215.560,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4472:1775.770,221.863,-387.057,0.000,215.560,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1909605"] = {
        npcs = {
            {
                id = 1533,
                alias = "Npc1533",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4235:1795.989,218.299,-377.880,0.000,68.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1529,
                alias = "Npc1529",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4234:1773.349,221.863,-383.565,0.000,170.993,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4471:1751.807,221.863,-394.909,0.000,299.960,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4471:1751.807,221.863,-394.909,0.000,299.960,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1909608"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1909609"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1909611"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1909612"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1909613"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1909614"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1909615"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1533,
                alias = "Npc1533",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5222:1798.839,217.795,-375.943,0.000,1.240,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1909616"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1909617"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1909618"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "[1018_84:4.381,0.007,-0.734]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4837:1831.302,218.811,-402.906,0.000,217.934,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1909619"] = {}
}

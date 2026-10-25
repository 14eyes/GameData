main_id = 70513
local tbl = {}
local n = 7051307
local v = 7051302
local n2 = 7051303
local n3 = 7051309
local n4 = 7051304
local n5 = 7051305
local n6 = 7051306
local n7 = 7051308
tbl[1] = 7051301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"43"}}, QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101903"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133001168"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133001054"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7051301"] = {},
    ["7051302"] = {},
    ["7051303"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051308_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30193,
                alias = "Npc30193",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_SendLetter_Pos",
                scene_id = 1018,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q7051308_N1004",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7051304"] = {},
    ["7051306"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051308_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q7051308_N1004",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7051307"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051202_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7051301"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051202_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1529,
                alias = "Npc1529",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1529Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7051302"] = {
        npcs = {
            {
                id = 30192,
                alias = "Npc30192",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_SendLetter_Pos",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051308_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30193,
                alias = "Npc30193",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_SendLetter_Pos",
                scene_id = 1018,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q7051308_N1004",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1527Born",
                scene_id = 1018,
                room_id = 1,
                data_index = 7
            }
        }
    },
    ["7051303"] = {
        npcs = {
            {
                id = 30192,
                alias = "Npc30192",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_SendLetter_Pos",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1527Born",
                scene_id = 1018,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["7051304"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051308_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q7051308_N1004",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1527Born",
                scene_id = 1018,
                room_id = 1,
                data_index = 5
            }
        }
    },
    ["7051305"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q7051308_N1004",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1527Born",
                scene_id = 1018,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["7051306"] = {
        npcs = {
            {
                id = 2600,
                alias = "Npc2600",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051205_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1527Born",
                scene_id = 1018,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q7051205_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7051307"] = {
        npcs = {
            {
                id = 1529,
                alias = "Npc1529",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1529Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051308"] = {},
    ["7051309"] = {
        npcs = {
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595NightBorn",
                scene_id = 1018,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1527Born",
                scene_id = 1018,
                room_id = 1,
                data_index = 3
            }
        }
    }
}

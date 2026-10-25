main_id = 20020
local tbl = {}
local n = 2002029
local v = 2002003
local n2 = 2002027
local n3 = 2002012
local n4 = 2002028
local n5 = 2002021
local n6 = 2002024
local n7 = 2002025
local n8 = 2002026
tbl[1] = 2002001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl

finish_action = {
    CLIENT = {},
    SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101650"}, {"101651"}, {"101652"}}}
}

fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133002098"
tbl3[2] = str
local tbl4 = {}
local str2 = "0"
tbl4[1] = "133002107"
tbl4[2] = str2
local tbl5 = {}
local str3 = "0"
tbl5[1] = "133003073"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101652"}, {"101651"}, {"101650"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2002001"] = {},
    ["2002003"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2002012"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2002021"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2002024"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2002025"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2002027"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2002028"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2002001"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2002003"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2002012"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2002021"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2002024"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2002025"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2002026"] = {},
    ["2002027"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2002028"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2002029"] = {}
}

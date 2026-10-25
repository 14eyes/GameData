main_id = 40099
local tbl = {}
local n = 4009902
local v = 4009910
local n2 = 4009903
local n3 = 4009904
local n4 = 4009911
local n5 = 4009909
local n6 = 4009905
local n7 = 4009906
local n8 = 4009912
local n9 = 4009907
local n10 = 4009908
tbl[1] = 4009901
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133004094"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133001080"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120257"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4009901"] = {},
    ["4009902"] = {},
    ["4009903"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009902_N1019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009902_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009904"] = {},
    ["4009905"] = {},
    ["4009906"] = {},
    ["4009907"] = {},
    ["4009908"] = {},
    ["4009909"] = {},
    ["4009910"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009902_N1019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009902_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009911"] = {},
    ["4009912"] = {}
}

quest_data = {
    ["4009901"] = {},
    ["4009902"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009902_N1019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009902_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009902_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4009903"] = {
        npcs = {
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009902_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009904"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009902_N1019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009902_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009905"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009905_N1019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009902_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009906"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009906_N1019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009902_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009907"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009907_N1019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009902_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009908"] = {},
    ["4009909"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009905_N1019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009902_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009910"] = {
        npcs = {
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009902_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009911"] = {},
    ["4009912"] = {}
}

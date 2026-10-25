main_id = 70800
local tbl = {}
local n = 7080002
local v = 7080003
local n2 = 7080004
local n3 = 7080005
local n4 = 7080006
local n5 = 7080007
local n6 = 7080008
local n7 = 7080009
local n8 = 7080010
local n9 = 7080011
local n10 = 7080012
local n11 = 7080013
local n12 = 7080014
local n13 = 7080015
local n14 = 7080016
local n15 = 7080017
tbl[1] = 7080001
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100757"}, {"100758"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133004926"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133001925"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7080002"] = {},
    ["7080003"] = {
        npcs = {
            {
                id = 1541,
                alias = "Npc1541",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Brook_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080004"] = {
        npcs = {
            {
                id = 1541,
                alias = "Npc1541",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Brook_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1539,
                alias = "Npc1539",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Allen_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7080006"] = {
        npcs = {
            {
                id = 1541,
                alias = "Npc1541",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Brook_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1539,
                alias = "Npc1539",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Allen_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7080007"] = {
        npcs = {
            {
                id = 1541,
                alias = "Npc1541",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Brook_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080008"] = {
        npcs = {
            {
                id = 1541,
                alias = "Npc1541",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Brook_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080009"] = {
        npcs = {
            {
                id = 1541,
                alias = "Npc1541",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Brook_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080011"] = {
        npcs = {
            {
                id = 1541,
                alias = "Npc1541",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Brook_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080015"] = {
        npcs = {
            {
                id = 1541,
                alias = "Npc1541",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Brook_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080016"] = {
        npcs = {
            {
                id = 1541,
                alias = "Npc1541",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Brook_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080017"] = {
        npcs = {
            {
                id = 1541,
                alias = "Npc1541",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Brook_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7080001"] = {},
    ["7080002"] = {
        npcs = {
            {
                id = 1541,
                alias = "Npc1541",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Brook_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080003"] = {
        npcs = {
            {
                id = 1539,
                alias = "Npc1539",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Allen_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080004"] = {},
    ["7080005"] = {},
    ["7080006"] = {},
    ["7080007"] = {},
    ["7080008"] = {},
    ["7080009"] = {},
    ["7080010"] = {},
    ["7080011"] = {
        npcs = {
            {
                id = 157301,
                alias = "Npc157301",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Wallit_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080012"] = {
        npcs = {
            {
                id = 157301,
                alias = "Npc157301",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Wallit_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080013"] = {
        npcs = {
            {
                id = 157301,
                alias = "Npc157301",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70800_Wallit_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080014"] = {},
    ["7080015"] = {},
    ["7080016"] = {},
    ["7080017"] = {}
}

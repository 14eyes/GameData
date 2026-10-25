main_id = 22115
local tbl = {}
local n = 2211502
local v = 2211503
local n2 = 2211504
local n3 = 2211505
local n4 = 2211506
local n5 = 2211507
local n6 = 2211508
local n7 = 2211509
local n8 = 2211510
local n9 = 2211511
tbl[1] = 2211501
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133102904,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100495,100513,100514"}}
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl5 = {}
local str2 = "133102904,1"
tbl5[1] = "3"
tbl5[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl5
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
server2.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100495,100513,100514"}}
tbl4.SERVER = server2
cancel_action = tbl4

rewind_data = {
    ["2211501"] = {
        npcs = {
            {
                id = 1624,
                alias = "Npc1624",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22115NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2211502"] = {
        npcs = {
            {
                id = 1624,
                alias = "Npc1624",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22115NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2211503"] = {
        npcs = {
            {
                id = 1624,
                alias = "Npc1624",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22115NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2211504"] = {
        npcs = {
            {
                id = 1624,
                alias = "Npc1624",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22115NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2211505"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q22115NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2211506"] = {},
    ["2211507"] = {},
    ["2211508"] = {}
}

quest_data = {
    ["2211501"] = {
        npcs = {
            {
                id = 1624,
                alias = "Npc1624",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22115NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2211502"] = {
        npcs = {
            {
                id = 1624,
                alias = "Npc1624",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22115NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2211503"] = {
        npcs = {
            {
                id = 1624,
                alias = "Npc1624",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22115NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2211504"] = {
        npcs = {
            {
                id = 1624,
                alias = "Npc1624",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22115NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q22115NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2211505"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q22115NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2211506"] = {},
    ["2211507"] = {},
    ["2211508"] = {}
}

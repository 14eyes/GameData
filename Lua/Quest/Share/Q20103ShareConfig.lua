main_id = 20103
local tbl = {}
local n = 2010302
local v = 2010303
local n2 = 2010304
local n3 = 2010305
local n4 = 2010306
local n5 = 2010307
local n6 = 2010308
local n7 = 2010309
local n8 = 2010310
local n9 = 2010311
local n10 = 2010312
local n11 = 2010313
local n12 = 2010314
local n13 = 2010315
tbl[1] = 2010301
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133003092,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133003518,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100469"}}
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl6 = {}
local str3 = "133003092,1"
tbl6[1] = "3"
tbl6[2] = str3
local tbl7 = {}
local str4 = "133003518,1"
tbl7[1] = "3"
tbl7[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl7
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
server2.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100469"}}
tbl5.SERVER = server2
cancel_action = tbl5

rewind_data = {
    ["2010301"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20025,
                alias = "Npc20025",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili1Born",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20102,
                alias = "Npc20102",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20103,
                alias = "Npc20103",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili3Born",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["2010302"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20025,
                alias = "Npc20025",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili1Born",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20102,
                alias = "Npc20102",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20103,
                alias = "Npc20103",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili3Born",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["2010303"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20025,
                alias = "Npc20025",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili1Born",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20102,
                alias = "Npc20102",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20103,
                alias = "Npc20103",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili3Born",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["2010313"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2010314"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2010315"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2010301"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20025,
                alias = "Npc20025",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili1Born",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20102,
                alias = "Npc20102",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20103,
                alias = "Npc20103",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili3Born",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["2010302"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q20103PaimonBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 20025,
                alias = "Npc20025",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili1Born",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20102,
                alias = "Npc20102",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20103,
                alias = "Npc20103",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili3Born",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["2010303"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q20103PaimonBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20025,
                alias = "Npc20025",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili1Born",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20102,
                alias = "Npc20102",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20103,
                alias = "Npc20103",
                script = "Actor/Npc/TempNPC",
                pos = "Q20103Hili3Born",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["2010313"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2010314"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2010315"] = {
        npcs = {
            {
                id = 1565,
                alias = "Npc1565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20103NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

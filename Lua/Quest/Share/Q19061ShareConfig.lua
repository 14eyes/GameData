main_id = 19061
local tbl = {}
local n = 1906103
local v = 1906104
local n2 = 1906105
local n3 = 1906106
local n4 = 1906107
local n5 = 1906111
local n6 = 1906108
local n7 = 1906109
local n8 = 1906110
tbl[1] = 1906102
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133004442,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl4 = {}
local str2 = ""
tbl4[1] = "133001566"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl6 = {}
local str3 = "133004442,1"
tbl6[1] = "3"
tbl6[2] = str3
local tbl7 = {}
local str4 = "133003787,1"
tbl7[1] = "3"
tbl7[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl7
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl8 = {}
local str5 = ""
tbl8[1] = "133001566"
tbl8[2] = str5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl8
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl5.SERVER = server2
cancel_action = tbl5

rewind_data = {
    ["1906102"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19061NoelStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1906103"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19061NoelStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1906105"] = {},
    ["1906106"] = {
        npcs = {
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062NoelWalkRoute5",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906108"] = {
        npcs = {
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062NoelRunRoute3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906109"] = {
        npcs = {
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062NoelRunRoute3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906110"] = {
        npcs = {
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062NoelRunRoute3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906111"] = {
        npcs = {
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062NoelRunRoute3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

quest_data = {
    ["1906102"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19061NoelStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906103"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19061NoelStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906104"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19061NoelStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906105"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19061NoelStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906106"] = {
        npcs = {
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062NoelWalkRoute5",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906107"] = {
        npcs = {
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062NoelWalkRoute5",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906108"] = {
        npcs = {
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062NoelRunRoute3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906109"] = {
        npcs = {
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062NoelRunRoute3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906110"] = {
        npcs = {
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062NoelRunRoute3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906111"] = {
        npcs = {
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062LiarStart",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062NoelRunRoute3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

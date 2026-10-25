main_id = 19066
local tbl = {}
local n = 1906612
local v = 1906611
local n2 = 1906602
local n3 = 1906603
local n4 = 1906604
local n5 = 1906605
local n6 = 1906606
local n7 = 1906607
local n8 = 1906608
local n9 = 1906609
local n10 = 1906610
tbl[1] = 1906601
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

finish_action = {
    CLIENT = {},
    SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133001567"}, {"133001568"}, {"133001569"}}}
}

fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133001567"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133001568"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133001569"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100742"}, {"100743"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1906601"] = {},
    ["1906603"] = {
        npcs = {
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906605"] = {
        npcs = {
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906607"] = {
        npcs = {
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906608"] = {
        npcs = {
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906609"] = {
        npcs = {
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906610"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

quest_data = {
    ["1906601"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q19066AddedPaimon",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1906602"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906603"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906604"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19066FocusCamera"}}
    },
    ["1906605"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906606"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906607"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906608"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906609"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19066HEPlayer"}}
    },
    ["1906610"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19066HEPlayer"}}
    },
    ["1906611"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q19066AddedPaimon",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1906612"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066MinecraftNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19066HENoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066Minecraft3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 11003,
                alias = "Npc11003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19066HEKnight",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q19066AddedPaimon",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}

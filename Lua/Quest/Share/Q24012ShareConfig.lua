main_id = 24012
local tbl = {}
local n = 2401215
local v = 2401202
local n2 = 2401203
local n3 = 2401204
local n4 = 2401213
local n5 = 2401205
local n6 = 2401206
local n7 = 2401207
local n8 = 2401208
local n9 = 2401212
local n10 = 2401214
local n11 = 2401209
local n12 = 2401210
local n13 = 2401216
local n14 = 2401217
local n15 = 2401218
local n16 = 2401211
tbl[1] = 2401201
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
tbl[18] = n16
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133401372"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133401112"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120486"}}
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2401201"}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl5 = {}
local str3 = "133401631,1"
tbl5[1] = "3"
tbl5[2] = str3
local tbl6 = {}
local str4 = "133401630,1"
tbl6[1] = "3"
tbl6[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl5
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl6
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2401201"] = {},
    ["2401202"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401201_N5053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401203"] = {},
    ["2401204"] = {},
    ["2401205"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5512:3516.637,421.427,4602.652,0.000,162.879,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401206"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5512:3516.637,421.427,4602.652,0.000,162.879,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401207"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5512:3516.637,421.427,4602.652,0.000,162.879,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401208"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5512:3516.637,421.427,4602.652,0.000,162.879,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401209"] = {},
    ["2401210"] = {},
    ["2401211"] = {},
    ["2401212"] = {},
    ["2401213"] = {},
    ["2401214"] = {},
    ["2401215"] = {},
    ["2401216"] = {},
    ["2401217"] = {},
    ["2401218"] = {}
}

quest_data = {
    ["2401201"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401201_N5053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401202"] = {},
    ["2401203"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401201_N5053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13357,
                alias = "Npc13357",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4651:3515.788,422.576,4601.596,0.000,337.235,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2401204"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401201_N5053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401205"] = {},
    ["2401206"] = {},
    ["2401207"] = {},
    ["2401208"] = {},
    ["2401209"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5512:3516.637,421.427,4602.652,0.000,162.879,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401210"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4652:3516.568,421.427,4598.967,0.000,140.208,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5054,
                alias = "Npc5054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5509:3525.126,421.427,4606.383,0.000,76.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2401211"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4652:3516.568,421.427,4598.967,0.000,140.208,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5054,
                alias = "Npc5054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5509:3525.126,421.427,4606.383,0.000,76.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5043,
                alias = "Npc5043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5510:3521.457,421.427,4605.208,0.000,193.335,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2401212"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5512:3516.637,421.427,4602.652,0.000,162.879,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401213"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5512:3516.637,421.427,4602.652,0.000,162.879,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401214"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5512:3516.637,421.427,4602.652,0.000,162.879,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401215"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401201_N5053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401216"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4652:3516.568,421.427,4598.967,0.000,140.208,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5043,
                alias = "Npc5043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5510:3521.457,421.427,4605.208,0.000,193.335,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2401217"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4652:3516.568,421.427,4598.967,0.000,140.208,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5054,
                alias = "Npc5054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5509:3525.126,421.427,4606.383,0.000,76.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5043,
                alias = "Npc5043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5510:3521.457,421.427,4605.208,0.000,193.335,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2401218"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4652:3516.568,421.427,4598.967,0.000,140.208,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5043,
                alias = "Npc5043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5510:3521.457,421.427,4605.208,0.000,193.335,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

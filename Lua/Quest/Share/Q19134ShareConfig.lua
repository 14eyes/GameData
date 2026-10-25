main_id = 19134
local tbl = {}
local n = 1913402
local v = 1913403
local n2 = 1913404
local n3 = 1913405
local n4 = 1913406
local n5 = 1913407
local n6 = 1913408
local n7 = 1913409
local n8 = 1913410
local n9 = 1913411
local n10 = 1913412
local n11 = 1913413
local n12 = 1913414
tbl[1] = 1913401
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101607"}}}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133107229"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101607"}}
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl4 = {}
local str2 = "0"
tbl4[1] = "1913101"
tbl4[2] = str2
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl4
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1913401"] = {},
    ["1913402"] = {
        npcs = {
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baiwen",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2142,
                alias = "Npc2142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baishi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2140,
                alias = "Npc2140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baixiao",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1913406"] = {
        npcs = {
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12312,
                alias = "Npc12312",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsA",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12313,
                alias = "Npc12313",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsB",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12314,
                alias = "Npc12314",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsC",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1913407"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12312,
                alias = "Npc12312",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsA",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12313,
                alias = "Npc12313",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsB",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12314,
                alias = "Npc12314",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsC",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1913408"] = {
        npcs = {
            {
                id = 12312,
                alias = "Npc12312",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12313,
                alias = "Npc12313",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12314,
                alias = "Npc12314",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1913412"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913403Baiwen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2142,
                alias = "Npc2142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913403Baishi",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2140,
                alias = "Npc2140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913403Baixiao",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1913413"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913403Baiwen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2142,
                alias = "Npc2142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913403Baishi",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2140,
                alias = "Npc2140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913403Baixiao",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

quest_data = {
    ["1913401"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913402_C1913401Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baiwen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2142,
                alias = "Npc2142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baishi",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2140,
                alias = "Npc2140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baixiao",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913402_C1913401Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1913402"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913402_C1913401Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913402_C1913401Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913403"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12312,
                alias = "Npc12312",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsA",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12313,
                alias = "Npc12313",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsB",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12314,
                alias = "Npc12314",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsC",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1913404"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12312,
                alias = "Npc12312",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsA",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12313,
                alias = "Npc12313",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsB",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12314,
                alias = "Npc12314",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsC",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1913405"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913407_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12312,
                alias = "Npc12312",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsA",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12313,
                alias = "Npc12313",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsB",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12314,
                alias = "Npc12314",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_GoodsC",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1913406"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baiwen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2142,
                alias = "Npc2142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baishi",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2140,
                alias = "Npc2140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baixiao",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1913407"] = {
        npcs = {
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baiwen",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2142,
                alias = "Npc2142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baishi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2140,
                alias = "Npc2140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913402_C1913401Baixiao",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1913408"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913403Baiwen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2142,
                alias = "Npc2142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913403Baishi",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2140,
                alias = "Npc2140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913403Baixiao",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1913409"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1913410"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1913411"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1913412"] = {
        npcs = {
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1913413"] = {
        npcs = {
            {
                id = 12303,
                alias = "Npc12303",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12304,
                alias = "Npc12304",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913412_AttendantB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12305,
                alias = "Npc12305",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_AttendantC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913403_C1913408Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1913414"] = {}
}

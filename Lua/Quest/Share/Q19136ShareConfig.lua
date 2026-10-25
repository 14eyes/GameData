main_id = 19136
local tbl = {}
local n = 1913602
local v = 1913603
local n2 = 1913604
local n3 = 1913605
local n4 = 1913606
local n5 = 1913607
local n6 = 1913608
local n7 = 1913609
local n8 = 1913614
local n9 = 1913610
local n10 = 1913611
local n11 = 1913612
local n12 = 1913613
local n13 = 1913615
tbl[1] = 1913601
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

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101608"}, {"101604"}, {"101669"}, {"101667"}, {"101668"}}
    }
}

fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}

local server = {
    QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101608"}, {"101604"}, {"101669"}, {"101667"}, {"101668"}},
    QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"504"}}
}

local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133104728"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133104742"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133104808"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133104809"
tbl6[2] = str4
local tbl7 = {}
local str5 = ""
tbl7[1] = "133104818"
tbl7[2] = str5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[5] = tbl7
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl8 = {}
local str6 = "0"
tbl8[1] = "1913101"
tbl8[2] = str6
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl8
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl9 = {}
local str7 = "133104212,1"
tbl9[1] = "3"
tbl9[2] = str7
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl9
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1913601"] = {},
    ["1913602"] = {
        npcs = {
            {
                id = 2006,
                alias = "Npc2006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913601_C1913601Gousaner",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1913603"] = {
        npcs = {
            {
                id = 2013,
                alias = "Npc2013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913602_C1913602Bolai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1913608"] = {},
    ["1913609"] = {},
    ["1913611"] = {},
    ["1913612"] = {},
    ["1913613"] = {}
}

quest_data = {
    ["1913601"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913601_C1913601Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2006,
                alias = "Npc2006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913601_C1913601Gousaner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913601_C1913601Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1913602"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913602_C1913602Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2013,
                alias = "Npc2013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913602_C1913602Bolai",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913602_C1913602Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1913603"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603_C1913606_ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603_C1913606_ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913604"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913605"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913606"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913607"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913608"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913606Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913606Target",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913609"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913606Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913606Target",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913610"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913611"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913611_C1913603Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913611_C1913603Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913612"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913611_C1913603Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913611_C1913603Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913613"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913613_C1913604Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913613_C1913604Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913614"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913603Target",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913615"] = {}
}

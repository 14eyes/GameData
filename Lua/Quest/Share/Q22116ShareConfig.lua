main_id = 22116
local tbl = {}
local n = 2211602
local v = 2211603
local n2 = 2211604
local n3 = 2211605
local n4 = 2211606
local n5 = 2211609
local n6 = 2211610
local n7 = 2211611
local n8 = 2211613
local n9 = 2211607
local n10 = 2211612
local n11 = 2211614
local n12 = 2211608
local n13 = 2211615
tbl[1] = 2211601
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
local str = "133104913,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100503,100504,100505"}}
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl5 = {}
local str2 = "133104075,1"
tbl5[1] = "3"
tbl5[2] = str2
local tbl6 = {}
local str3 = "133104913,1"
tbl6[1] = "3"
tbl6[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl5
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl6
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
server2.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100503,100504,100505"}}
tbl4.SERVER = server2
cancel_action = tbl4

rewind_data = {
    ["2211601"] = {},
    ["2211602"] = {},
    ["2211603"] = {},
    ["2211604"] = {},
    ["2211605"] = {},
    ["2211606"] = {
        npcs = {
            {
                id = 162401,
                alias = "Npc162401",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22116Battle",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2211607"] = {
        npcs = {
            {
                id = 162401,
                alias = "Npc162401",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22116Battle",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2211608"] = {
        npcs = {
            {
                id = 162401,
                alias = "Npc162401",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22116Battle",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2211609"] = {
        npcs = {
            {
                id = 2001,
                alias = "Npc2001",
                script = "Actor/Npc/TempNPC",
                pos = "Q22116ZhiHua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2015,
                alias = "Npc2015",
                script = "Actor/Npc/TempNPC",
                pos = "Q22116QiMing",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2211610"] = {
        npcs = {
            {
                id = 203701,
                alias = "Npc203701",
                script = "Actor/Npc/TempNPC",
                pos = "Q22116Chaoxi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 207601,
                alias = "Npc207601",
                script = "Actor/Npc/TempNPC",
                pos = "Q22116Sisi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2211611"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000MengSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2074,
                alias = "Npc2074",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000LuluSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000FeiSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2211612"] = {},
    ["2211613"] = {},
    ["2211614"] = {},
    ["2211615"] = {}
}

quest_data = {
    ["2211601"] = {},
    ["2211602"] = {},
    ["2211603"] = {},
    ["2211604"] = {},
    ["2211605"] = {},
    ["2211606"] = {
        npcs = {
            {
                id = 162401,
                alias = "Npc162401",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22116Battle",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2211607"] = {
        npcs = {
            {
                id = 162401,
                alias = "Npc162401",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22116Battle",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2211608"] = {
        npcs = {
            {
                id = 162401,
                alias = "Npc162401",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22116Battle",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2211609"] = {
        npcs = {
            {
                id = 2001,
                alias = "Npc2001",
                script = "Actor/Npc/TempNPC",
                pos = "Q22116ZhiHua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2015,
                alias = "Npc2015",
                script = "Actor/Npc/TempNPC",
                pos = "Q22116QiMing",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2211610"] = {
        npcs = {
            {
                id = 203701,
                alias = "Npc203701",
                script = "Actor/Npc/TempNPC",
                pos = "Q22116Chaoxi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 207601,
                alias = "Npc207601",
                script = "Actor/Npc/TempNPC",
                pos = "Q22116Sisi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2211611"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000MengSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2074,
                alias = "Npc2074",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000LuluSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000FeiSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2211612"] = {},
    ["2211613"] = {},
    ["2211614"] = {},
    ["2211615"] = {}
}

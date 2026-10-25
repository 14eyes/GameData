main_id = 19047
local tbl = {}
local n = 1904701
local v = 1904702
local n2 = 1904714
local n3 = 1904703
local n4 = 1904704
local n5 = 1904705
local n6 = 1904706
local n7 = 1904713
local n8 = 1904708
local n9 = 1904707
local n10 = 1904709
local n11 = 1904710
local n12 = 1904715
local n13 = 1904716
local n14 = 1904711
tbl[1] = 1904712
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133107234"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133107235"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133107236"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_UNLOCK_AVATAR_TEAM = {}
tbl2.SERVER = server
cancel_action = tbl2

local tbl6 = {
    ["1904701"] = {},
    ["1904703"] = {},
    ["1904705"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904704_C1904702_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904706"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904706_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904707"] = {}
}

local tbl7 = {
    npcs = {
        {
            id = 509,
            alias = "Coop_Yunjin",
            script = "Actor/Npc/TempNPC",
            pos = "Q1904707_C1904704_N509",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

local quest_var = {}
local n15 = -1
local n16 = -1
local n17 = -1
local n18 = -1
quest_var[1] = 1
quest_var[2] = n15
quest_var[3] = n16
quest_var[4] = n17
quest_var[5] = n18
tbl7.quest_var = quest_var
tbl6["1904709"] = tbl7

tbl6["1904711"] = {
    npcs = {
        {
            id = 509,
            alias = "Coop_Yunjin",
            script = "Actor/Npc/TempNPC",
            pos = "Q1904707_C1904704_N509",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

tbl6["1904712"] = {}

tbl6["1904713"] = {
    npcs = {
        {
            id = 509,
            alias = "Coop_Yunjin",
            script = "Actor/Npc/TempNPC",
            pos = "Q1904706_N509",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

tbl6["1904708"] = {
    npcs = {
        {
            id = 509,
            alias = "Coop_Yunjin",
            script = "Actor/Npc/TempNPC",
            pos = "Q1904706_N509",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

rewind_data = tbl6

quest_data = {
    ["1904701"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904702_C1904701_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904702_C1904701_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904702"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904702_C1904701_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904702_C1904701_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904703"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904704_C1904702_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904704_C1904702_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904704"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904704_C1904702_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904704_C1904702_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904705"] = {
        npcs = {
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904704_C1904702_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904706_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904706_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1904706"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904706_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904706_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904707"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904707_C1904704_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904707_C1904704_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904707_C1904704_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904707_C1904704_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1904708"] = {
        npcs = {
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904706_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904709"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904707_C1904704_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904707_C1904704_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904710"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904707_C1904704_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904707_C1904704_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904711"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904707_C1904704_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904707_C1904704_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904712"] = {},
    ["1904713"] = {
        npcs = {
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904706_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904714"] = {},
    ["1904715"] = {},
    ["1904716"] = {}
}

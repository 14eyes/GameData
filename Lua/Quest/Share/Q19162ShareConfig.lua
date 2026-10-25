main_id = 19162
local tbl = {}
local n = 1916202
local v = 1916208
local n2 = 1916203
local n3 = 1916209
local n4 = 1916204
local n5 = 1916207
local n6 = 1916210
local n7 = 1916205
local n8 = 1916206
tbl[1] = 1916201
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
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"506"}, {"10014"}, {"10013"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133315346"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133301756"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {}
local qUEST_EXEC_SET_WEATHER_GADGET = {}
local tbl5 = {}
local str3 = "0"
tbl5[1] = "4096"
tbl5[2] = str3
qUEST_EXEC_SET_WEATHER_GADGET[1] = tbl5
server.QUEST_EXEC_SET_WEATHER_GADGET = qUEST_EXEC_SET_WEATHER_GADGET
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1916201"] = {}, ["1916205"] = {}, ["1916207"] = {}, ["1916210"] = {}}

quest_data = {
    ["1916201"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916201_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916201_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916202"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916201_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916201_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916203"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916202_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916202_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916204"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1916204_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1916204_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916205"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1916205_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1916205_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916206"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1916205_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1916205_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916207"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916206_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916206_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916208"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916202_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916202_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916209"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916202_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916202_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916210"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100226:-12.428,307.273,3222.717]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100226:-12.428,307.273,3222.717]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

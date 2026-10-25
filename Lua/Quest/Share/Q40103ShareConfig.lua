main_id = 40103
local tbl = {}
local n = 4010302
local v = 4010303
local n2 = 4010304
local n3 = 4010305
local n4 = 4010307
local n5 = 4010308
local n6 = 4010309
local n7 = 4010310
local n8 = 4010313
local n9 = 4010306
tbl[1] = 4010301
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
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133301769"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133315336"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133315339"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED = {{"0"}}
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120327"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4010301"] = {},
    ["4010302"] = {},
    ["4010303"] = {},
    ["4010304"] = {
        npcs = {
            {
                id = 13155,
                alias = "Npc13155",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010304_N13155",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13208,
                alias = "Npc13208",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100228:-524.530,190.176,3358.223,0.000,231.959,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13209,
                alias = "Npc13209",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100227:-524.612,190.262,3356.931,0.000,279.177,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13293,
                alias = "Npc13293",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100232:-561.855,190.610,3348.855,0.000,86.210,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13294,
                alias = "Npc13294",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100233:-556.128,190.692,3353.314,358.569,297.270,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13295,
                alias = "Npc13295",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100234:-563.861,190.834,3340.438,8.118,0.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13296,
                alias = "Npc13296",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100235:-556.411,190.724,3356.834,0.000,137.550,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 13297,
                alias = "Npc13297",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100236:-559.085,190.610,3341.623,358.758,231.440,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4010305"] = {},
    ["4010306"] = {},
    ["4010307"] = {
        npcs = {
            {
                id = 13153,
                alias = "Npc13153",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010305_N13153",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4010308"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4010310"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["4010301"] = {},
    ["4010302"] = {
        npcs = {
            {
                id = 13091,
                alias = "Npc13091",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N13091",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4010303"] = {
        npcs = {
            {
                id = 13155,
                alias = "Npc13155",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010304_N13155",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13208,
                alias = "Npc13208",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100228:-524.530,190.176,3358.223,0.000,231.959,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13209,
                alias = "Npc13209",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100227:-524.612,190.262,3356.931,0.000,279.177,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13293,
                alias = "Npc13293",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100232:-561.855,190.610,3348.855,0.000,86.210,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13294,
                alias = "Npc13294",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100233:-556.128,190.692,3353.314,358.569,297.270,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13295,
                alias = "Npc13295",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100234:-563.861,190.834,3340.438,8.118,0.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13296,
                alias = "Npc13296",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100235:-556.411,190.724,3356.834,0.000,137.550,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 13297,
                alias = "Npc13297",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100236:-559.085,190.610,3341.623,358.758,231.440,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4010304"] = {},
    ["4010305"] = {
        npcs = {
            {
                id = 13153,
                alias = "Npc13153",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010305_N13153",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4010306"] = {
        npcs = {
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1064",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1065",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1067",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4010307"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4010308"] = {},
    ["4010309"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4010310"] = {
        npcs = {
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1064",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1065",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1067",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010310_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4010313"] = {}
}

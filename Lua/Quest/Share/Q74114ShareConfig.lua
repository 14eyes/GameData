main_id = 74114
local tbl = {}
local n = 7411403
local v = 7411404
local n2 = 7411405
local n3 = 7411406
local n4 = 7411408
local n5 = 7411407
local n6 = 7411401
tbl[1] = 7411402
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133402045"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133402050"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120443"}}
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"7405112"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7411401"] = {},
    ["7411402"] = {},
    ["7411403"] = {
        npcs = {
            {
                id = 13489,
                alias = "Npc13489",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5191:3461.847,456.276,3837.557,0.000,47.271,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13490,
                alias = "Npc13490",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5192:3463.290,456.447,3839.019,0.000,222.062,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13491,
                alias = "Npc13491",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5193:3461.815,456.369,3839.092,0.000,175.602,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7411404"] = {
        npcs = {
            {
                id = 13490,
                alias = "Npc13490",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5192:3463.290,456.447,3839.019,0.000,222.062,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13491,
                alias = "Npc13491",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5193:3461.815,456.369,3839.092,0.000,175.602,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7411405"] = {},
    ["7411406"] = {},
    ["7411407"] = {},
    ["7411408"] = {
        npcs = {
            {
                id = 13489,
                alias = "Npc13489",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_8:-9.295,0.000,-2.443,0.000,87.541,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7411401"] = {},
    ["7411402"] = {
        npcs = {
            {
                id = 13489,
                alias = "Npc13489",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5191:3461.847,456.276,3837.557,0.000,47.271,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13490,
                alias = "Npc13490",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5192:3463.290,456.447,3839.019,0.000,222.062,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13491,
                alias = "Npc13491",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5193:3461.815,456.369,3839.092,0.000,175.602,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7411403"] = {},
    ["7411404"] = {
        npcs = {
            {
                id = 13489,
                alias = "Npc13489",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5191:3461.847,456.276,3837.557,0.000,47.271,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7411405"] = {
        npcs = {
            {
                id = 13489,
                alias = "Npc13489",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_21:-9.320,0.000,-2.396,0.000,214.390,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13490,
                alias = "Npc13490",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_16:-9.468,0.000,-1.145,0.000,165.212,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7411406"] = {
        npcs = {
            {
                id = 13489,
                alias = "Npc13489",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_8:-9.295,0.000,-2.443,0.000,87.541,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7411407"] = {
        npcs = {
            {
                id = 13489,
                alias = "Npc13489",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_8:-9.295,0.000,-2.443,0.000,87.541,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7411408"] = {}
}

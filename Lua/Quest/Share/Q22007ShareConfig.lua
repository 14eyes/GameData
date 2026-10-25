main_id = 22007
local tbl = {}
local n = 2200702
local v = 2200703
local n2 = 2200704
local n3 = 2200705
tbl[1] = 2200701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133104515,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100493,100494"}}
tbl2.SERVER = server
finish_action = tbl2
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl5 = {}
local str2 = "133104515,1"
tbl5[1] = "3"
tbl5[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl5
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
server2.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100493,100494"}}
tbl4.SERVER = server2
fail_action = tbl4
local tbl6 = {CLIENT = {}}
local server3 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE3 = {}
local tbl7 = {}
local str3 = "133104515,1"
tbl7[1] = "3"
tbl7[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE3[1] = tbl7
server3.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE3
server3.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100493,100494"}}
tbl6.SERVER = server3
cancel_action = tbl6

rewind_data = {
    ["2200701"] = {
        npcs = {
            {
                id = 2421,
                alias = "Npc2421",
                script = "Actor/Npc/TempNPC",
                pos = "Q22005BaoerInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2200702"] = {
        npcs = {
            {
                id = 2421,
                alias = "Npc2421",
                script = "Actor/Npc/TempNPC",
                pos = "Q22005BaoerInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2200703"] = {
        npcs = {
            {
                id = 2421,
                alias = "Npc2421",
                script = "Actor/Npc/TempNPC",
                pos = "Q22005BaoerInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2200704"] = {
        npcs = {
            {
                id = 2421,
                alias = "Npc2421",
                script = "Actor/Npc/TempNPC",
                pos = "Q22005BaoerInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2200705"] = {
        npcs = {
            {
                id = 2421,
                alias = "Npc2421",
                script = "Actor/Npc/TempNPC",
                pos = "Q22005BaoerInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    }
}

quest_data = {
    ["2200701"] = {
        npcs = {
            {
                id = 2421,
                alias = "Npc2421",
                script = "Actor/Npc/TempNPC",
                pos = "Q22005BaoerInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2200702"] = {
        npcs = {
            {
                id = 2421,
                alias = "Npc2421",
                script = "Actor/Npc/TempNPC",
                pos = "Q22005BaoerInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2200703"] = {
        npcs = {
            {
                id = 2421,
                alias = "Npc2421",
                script = "Actor/Npc/TempNPC",
                pos = "Q22005BaoerInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q22005BaoerInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2200704"] = {
        npcs = {
            {
                id = 2421,
                alias = "Npc2421",
                script = "Actor/Npc/TempNPC",
                pos = "Q22005BaoerInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2200705"] = {
        npcs = {
            {
                id = 2421,
                alias = "Npc2421",
                script = "Actor/Npc/TempNPC",
                pos = "Q22005BaoerInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

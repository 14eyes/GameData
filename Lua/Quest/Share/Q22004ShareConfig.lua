main_id = 22004
local tbl = {}
local n = 2200402
local v = 2200403
local n2 = 2200404
local n3 = 2200405
tbl[1] = 2200401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl

rewind_data = {
    ["2200401"] = {
        npcs = {
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2200402"] = {
        npcs = {
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2200403"] = {
        npcs = {
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2200404"] = {
        npcs = {
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2200405"] = {
        npcs = {
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    }
}

quest_data = {
    ["2200401"] = {
        npcs = {
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                data_index = 2
            }
        }
    },
    ["2200402"] = {
        npcs = {
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2200403"] = {
        npcs = {
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2200404"] = {
        npcs = {
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        }
    },
    ["2200405"] = {
        npcs = {
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q22004JiangXueBorn",
                scene_id = 3,
                data_index = 2
            }
        }
    }
}

finish_action = {}
fail_action = {}
cancel_action = {}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133104901,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl5 = {}
local str2 = "133104901,1"
tbl5[1] = "3"
tbl5[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl5
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl4.SERVER = server2
cancel_action = tbl4

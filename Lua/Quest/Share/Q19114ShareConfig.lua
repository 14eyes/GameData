main_id = 19114
local tbl = {}
local n = 1911408
local v = 1911402
local n2 = 1911403
local n3 = 1911404
local n4 = 1911406
local n5 = 1911407
local n6 = 1911405
tbl[1] = 1911401
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
tbl3[1] = "133220686"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "201060002,1"
tbl4[1] = "1060"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1911401"] = {},
    ["1911402"] = {},
    ["1911403"] = {},
    ["1911404"] = {},
    ["1911405"] = {},
    ["1911406"] = {},
    ["1911407"] = {},
    ["1911408"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911301tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1911401"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911301tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911301tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1911402"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911401mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911402tuoma",
                scene_id = 3,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911402tuoma",
                scene_id = 3,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1911403"] = {
        npcs = {
            {
                id = 12166,
                alias = "Npc12166",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911402mass3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911403tuoma2",
                scene_id = 3,
                room_id = 1,
                data_index = 2
            },
            {
                id = 12182,
                alias = "Npc12182",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911402mass4",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911403tuoma2",
                scene_id = 3,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["1911404"] = {
        npcs = {
            {
                id = 12165,
                alias = "Npc12165",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911403mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911403tuoma2",
                scene_id = 3,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1911405"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911405mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12165,
                alias = "Npc12165",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911405mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12166,
                alias = "Npc12166",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911405mass3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911405tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12182,
                alias = "Npc12182",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911405mass5",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911405tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1911406"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911406tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12165,
                alias = "Npc12165",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911403mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911406tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1911407"] = {},
    ["1911408"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911301tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911301tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            }
        }
    }
}

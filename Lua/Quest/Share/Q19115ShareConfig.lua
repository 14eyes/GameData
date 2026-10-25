main_id = 19115
local tbl = {}
local n = 1911501
local v = 1911507
local n2 = 1911508
local n3 = 1911509
local n4 = 1911510
local n5 = 1911502
local n6 = 1911505
local n7 = 1911504
local n8 = 1911503
tbl[1] = 1911506
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
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"501"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220675"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133220698"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl5 = {}
local str3 = "201060002,1"
tbl5[1] = "1060"
tbl5[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl5
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1911501"] = {
        npcs = {
            {
                id = 3100,
                alias = "Npc3100",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911506mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911502"] = {},
    ["1911503"] = {},
    ["1911504"] = {},
    ["1911505"] = {},
    ["1911506"] = {}
}

quest_data = {
    ["1911501"] = {
        npcs = {
            {
                id = 3101,
                alias = "Npc3101",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911501mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1911502Trans"}}
    },
    ["1911502"] = {
        npcs = {
            {
                id = 3103,
                alias = "Npc3103",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911502mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3099,
                alias = "Npc3099",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911502mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3102,
                alias = "Npc3102",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911502mass3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12236,
                alias = "Npc12236",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911502mass4",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12237,
                alias = "Npc12237",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911502mass5",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1911503"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911503tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911503tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1911504"] = {},
    ["1911505"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911503tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911503tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1911506"] = {
        npcs = {
            {
                id = 3100,
                alias = "Npc3100",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911506mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911507"] = {},
    ["1911508"] = {
        npcs = {
            {
                id = 12235,
                alias = "Npc12235",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911502TARGET",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911509"] = {
        npcs = {
            {
                id = 12257,
                alias = "Npc12257",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911502TARGET2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911510"] = {
        npcs = {
            {
                id = 12258,
                alias = "Npc12258",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911502TARGET3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

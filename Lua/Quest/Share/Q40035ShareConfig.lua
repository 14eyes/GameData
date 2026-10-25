main_id = 40035
local tbl = {}
local n = 4003502
local v = 4003503
local n2 = 4003506
local n3 = 4003507
local n4 = 4003504
local n5 = 4003505
tbl[1] = 4003501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133107209"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4003501"] = {},
    ["4003502"] = {},
    ["4003503"] = {},
    ["4003506"] = {},
    ["4003507"] = {
        npcs = {
            {
                id = 2084,
                alias = "Npc2084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003506_N208401_310701346",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4003501"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003501_N10211_310701342",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003501_N214301",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2140,
                alias = "Npc2140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003501_N214001",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003502"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003501_N10211_310701342",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003501_N214301",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2140,
                alias = "Npc2140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003501_N214001",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003503"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003503_N10211_310701348",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003503_N1016_310701345",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30090,
                alias = "Npc30090",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003503_N30090_310701344",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003504"] = {},
    ["4003505"] = {},
    ["4003506"] = {
        npcs = {
            {
                id = 2084,
                alias = "Npc2084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003506_N208401_310701346",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003507"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "T4003507_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003507_N10232_310701347",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003507_N1021",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003507_N1012",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "T4003507_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2148,
                alias = "Npc2148",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003507_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2034,
                alias = "Npc2034",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003507_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 2035,
                alias = "Npc2035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003507_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    }
}

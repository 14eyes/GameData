main_id = 23021
local tbl = {}
local n = 2302102
local v = 2302103
local n2 = 2302104
local n3 = 2302105
local n4 = 2302109
local n5 = 2302106
local n6 = 2302107
local n7 = 2302108
local n8 = 2302110
tbl[1] = 2302101
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
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133302106"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133302042"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133302311"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2302101"] = {},
    ["2302102"] = {
        npcs = {
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4031,
                alias = "Npc4031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4031",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302104"] = {
        npcs = {
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4031,
                alias = "Npc4031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4031",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302108"] = {
        npcs = {
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4031,
                alias = "Npc4031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4031",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302106"] = {
        npcs = {
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4031,
                alias = "Npc4031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4031",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302103"] = {
        npcs = {
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4031,
                alias = "Npc4031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4031",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2302101"] = {
        npcs = {
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4031,
                alias = "Npc4031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302101_N4031",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302102"] = {},
    ["2302103"] = {},
    ["2302104"] = {},
    ["2302105"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2302106_PLAYER"}}},
    ["2302106"] = {},
    ["2302107"] = {},
    ["2302108"] = {},
    ["2302109"] = {},
    ["2302110"] = {}
}

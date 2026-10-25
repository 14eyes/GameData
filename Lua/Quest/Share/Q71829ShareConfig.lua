main_id = 71829
local tbl = {}
local n = 7182902
local v = 7182903
local n2 = 7182904
local n3 = 7182905
local n4 = 7182906
local n5 = 7182907
local n6 = 7182908
local n7 = 7182909
tbl[1] = 7182901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133104186"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "133104445,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7182902"] = {
        npcs = {
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829JiangXueSit",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182904"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829YanXiao1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829JiangXue1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7182906"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829YanXiao1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829JiangXue1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7182909"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829YanXiao2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829JiangXue2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7182901"] = {},
    ["7182902"] = {
        npcs = {
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829JiangXueSit",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182903"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829YanXiaoSit",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182904"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829YanXiao1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829JiangXue1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7182905"] = {},
    ["7182906"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829YanXiao1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829JiangXue1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7182907"] = {},
    ["7182908"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q71829Player"}}},
    ["7182909"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829YanXiao2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71829JiangXue2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q71829Player"}}
    }
}

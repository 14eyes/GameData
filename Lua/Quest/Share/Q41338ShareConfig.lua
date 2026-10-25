main_id = 41338
local tbl = {}
local n = 4133801
local v = 4133802
local n2 = 4133803
local n3 = 4133804
local n4 = 4133805
local n5 = 4133806
local n6 = 4133807
local n7 = 4133808
local n8 = 4133809
local n9 = 4133810
local n10 = 4133811
local n11 = 4133812
local n12 = 4133813
tbl[1] = 4133814
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
tbl[12] = n10
tbl[13] = n11
tbl[14] = n12
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133107152"
tbl3[2] = str
local tbl4 = {}
local str2 = "0"
tbl4[1] = "133107151"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4133801"] = {},
    ["4133802"] = {
        npcs = {
            {
                id = 2096,
                alias = "Npc2096",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41338_xiaoqian1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133807"] = {
        npcs = {
            {
                id = 2096,
                alias = "Npc2096",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41338_xiaoqian3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133813"] = {
        npcs = {
            {
                id = 2096,
                alias = "Npc2096",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41338_tiantianEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133814"] = {}
}

quest_data = {
    ["4133801"] = {
        npcs = {
            {
                id = 2096,
                alias = "Npc2096",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41338_tiantian1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133802"] = {},
    ["4133803"] = {},
    ["4133804"] = {},
    ["4133805"] = {},
    ["4133806"] = {
        npcs = {
            {
                id = 2096,
                alias = "Npc2096",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41338_xiaoqian2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41338_talk"}}
    },
    ["4133807"] = {},
    ["4133808"] = {
        npcs = {
            {
                id = 2096,
                alias = "Npc2096",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41338_tiantianEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41338_talk2"}}
    },
    ["4133809"] = {},
    ["4133810"] = {},
    ["4133811"] = {},
    ["4133812"] = {
        npcs = {
            {
                id = 2096,
                alias = "Npc2096",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41338_tiantianEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41338_talk2"}}
    },
    ["4133813"] = {},
    ["4133814"] = {}
}

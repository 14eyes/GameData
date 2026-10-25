main_id = 21035
local tbl = {}
local n = 2103502
local v = 2103503
tbl[1] = 2103501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133106034"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl4 = {}
local str2 = "0"
tbl4[1] = "2103501"
tbl4[2] = str2
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl4
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2103501"] = {},
    ["2103502"] = {},
    ["2103503"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103503",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2103501"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103501_Sunyu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103502"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103503",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103503"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103503",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2103503_3228"}}
    }
}

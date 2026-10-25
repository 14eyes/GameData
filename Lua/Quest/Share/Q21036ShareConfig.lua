main_id = 21036
local tbl = {}
local n = 2103607
local v = 2103606
local n2 = 2103602
local n3 = 2103608
local n4 = 2103603
local n5 = 2103604
local n6 = 2103605
tbl[1] = 2103601
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
tbl3[1] = "133302724"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133302722"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2103601"] = {},
    ["2103602"] = {},
    ["2103604"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103602",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103605"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103605",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103606"] = {},
    ["2103607"] = {},
    ["2103608"] = {}
}

quest_data = {
    ["2103601"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103601",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103602"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103602",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103603"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103605",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103604"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103602",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103605"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103605",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103606"] = {},
    ["2103607"] = {},
    ["2103608"] = {}
}

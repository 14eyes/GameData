main_id = 20046
local tbl = {}
local n = 2004602
local v = 2004603
local n2 = 2004604
tbl[1] = 2004601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133003080"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2004601"] = {},
    ["2004602"] = {},
    ["2004604"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2004601"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1700,
                alias = "Npc1700",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003401_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2004602"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1700,
                alias = "Npc1700",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003401_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2004603"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1700,
                alias = "Npc1700",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2004604"] = {
        npcs = {
            {
                id = 1700,
                alias = "Npc1700",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2004603_N1700",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003401_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

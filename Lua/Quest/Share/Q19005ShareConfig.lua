main_id = 19005
local tbl = {}
local n = 1900502
local v = 1900503
local n2 = 1900504
local n3 = 1900505
tbl[1] = 1900501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133004437"}}}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133004437"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1900501"] = {},
    ["1900502"] = {
        npcs = {
            {
                id = 10801,
                alias = "Npc10801",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP101401Shangren01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900503"] = {},
    ["1900504"] = {},
    ["1900505"] = {}
}

quest_data = {
    ["1900501"] = {
        npcs = {
            {
                id = 10801,
                alias = "Npc10801",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP101401Shangren01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900502"] = {},
    ["1900503"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala08",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala08",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1900504"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala08",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala08",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1900505"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala06",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala06",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

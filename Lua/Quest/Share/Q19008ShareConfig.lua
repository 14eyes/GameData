main_id = 19008
local tbl = {}
local n = 1900802
local v = 1900803
local n2 = 1900804
tbl[1] = 1900801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {}
local client = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133004440"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
client.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
client.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100552"}}
tbl2.CLIENT = client
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl4 = {}
local str2 = ""
tbl4[1] = "133004440"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100552"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1900801"] = {},
    ["1900802"] = {
        npcs = {
            {
                id = 10802,
                alias = "Npc10802",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP101401Daobao01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900803"] = {},
    ["1900804"] = {}
}

quest_data = {
    ["1900801"] = {
        npcs = {
            {
                id = 10802,
                alias = "Npc10802",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP101401Daobao01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900802"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala10",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala10",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1900803"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala09",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala09",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1900804"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala09",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala09",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

main_id = 19101
local tbl = {}
local n = 1910102
local v = 1910103
local n2 = 1910104
local n3 = 1910105
tbl[1] = 1910101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {}
local client = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133004017"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
client.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.CLIENT = client
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl4 = {}
local str2 = ""
tbl4[1] = "133004017"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1910101"] = {},
    ["1910102"] = {},
    ["1910103"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona01_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910104"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona08",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910105"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona01_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1910101"] = {
        npcs = {
            {
                id = 146101,
                alias = "Npc146101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Nimrod01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona01_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143101,
                alias = "Npc143101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona01_02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1910102"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona01_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 143101,
                alias = "Npc143101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona01_02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1910103"] = {},
    ["1910104"] = {},
    ["1910105"] = {}
}

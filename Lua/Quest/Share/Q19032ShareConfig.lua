main_id = 19032
local tbl = {}
local n = 1903202
local v = 1903203
local n2 = 1903204
local n3 = 1903205
tbl[1] = 1903201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133102924,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133102926,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl6 = {}
local str3 = "133102924,1"
tbl6[1] = "3"
tbl6[2] = str3
local tbl7 = {}
local str4 = "133102926,1"
tbl7[1] = "3"
tbl7[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl7
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl5.SERVER = server2
cancel_action = tbl5

rewind_data = {
    ["1903201"] = {},
    ["1903202"] = {
        npcs = {
            {
                id = 10918,
                alias = "Npc10918",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903201male",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903203"] = {},
    ["1903204"] = {},
    ["1903205"] = {}
}

quest_data = {
    ["1903201"] = {
        npcs = {
            {
                id = 10918,
                alias = "Npc10918",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903201male",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903202"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903202cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903203"] = {
        npcs = {
            {
                id = 10907,
                alias = "Npc10907",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903203jiujiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903204"] = {
        npcs = {
            {
                id = 10918,
                alias = "Npc10918",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903204male",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903204Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10905,
                alias = "Npc10905",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903204male2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10917,
                alias = "Npc10917",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903204male3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1903205"] = {
        npcs = {
            {
                id = 10907,
                alias = "Npc10907",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903203jiujiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

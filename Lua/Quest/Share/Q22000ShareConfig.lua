main_id = 22000
local tbl = {}
local n = 2200002
local v = 2200003
local n2 = 2200004
local n3 = 2200005
tbl[1] = 2200001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl

rewind_data = {
    ["2200001"] = {},
    ["2200002"] = {
        npcs = {
            {
                id = 207401,
                alias = "Npc207401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000LuluSpawn",
                scene_id = 3
            },
            {
                id = 203101,
                alias = "Npc203101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000MengSpawn",
                scene_id = 3
            },
            {
                id = 203001,
                alias = "Npc203001",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000FeiSpawn",
                scene_id = 3
            }
        }
    },
    ["2200005"] = {
        npcs = {
            {
                id = 207401,
                alias = "Npc207401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000LuluSpawn",
                scene_id = 3
            },
            {
                id = 203101,
                alias = "Npc203101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000MengSpawn",
                scene_id = 3
            },
            {
                id = 203001,
                alias = "Npc203001",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000FeiSpawn",
                scene_id = 3
            }
        }
    },
    ["2200004"] = {
        npcs = {
            {
                id = 207401,
                alias = "Npc207401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000LuluSpawn",
                scene_id = 3
            },
            {
                id = 203101,
                alias = "Npc203101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000MengSpawn",
                scene_id = 3
            },
            {
                id = 203001,
                alias = "Npc203001",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000FeiSpawn",
                scene_id = 3
            }
        }
    }
}

quest_data = {
    ["2200001"] = {
        npcs = {
            {
                id = 207401,
                alias = "Npc207401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000LuluSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 203101,
                alias = "Npc203101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000MengSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 203001,
                alias = "Npc203001",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000FeiSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2200002"] = {},
    ["2200003"] = {},
    ["2200004"] = {}
}

finish_action = {}
fail_action = {}
cancel_action = {}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133107005,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {}
tbl2.SERVER = server
cancel_action = tbl2

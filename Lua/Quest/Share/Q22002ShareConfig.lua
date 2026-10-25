main_id = 22002
local tbl = {}
local n = 2200202
local v = 2200203
local n2 = 2200204
tbl[1] = 2200201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl

rewind_data = {
    ["2200201"] = {},
    ["2200202"] = {
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
    ["2200203"] = {
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
    ["2200204"] = {
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
    ["2200201"] = {
        npcs = {
            {
                id = 203001,
                alias = "Npc203001",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000FeiSpawn",
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
                id = 207401,
                alias = "Npc207401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22000LuluSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2200202"] = {},
    ["2200203"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q22000LuluSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2200204"] = {}
}

finish_action = {}
fail_action = {}
cancel_action = {}

cancel_action = {
    CLIENT = {},
    SERVER = {QUEST_EXEC_REFRESH_GROUP_SUITE = {}, QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {}}
}

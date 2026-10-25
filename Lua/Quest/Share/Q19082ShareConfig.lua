main_id = 19082
local tbl = {}
local n = 1908202
local v = 1908203
local n2 = 1908206
local n3 = 1908204
local n4 = 1908205
tbl[1] = 1908201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1908201"] = {}, ["1908202"] = {}, ["1908203"] = {}, ["1908204"] = {}}

quest_data = {
    ["1908201"] = {},
    ["1908202"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908202Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908203"] = {
        npcs = {
            {
                id = 204501,
                alias = "Npc204501",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908203Mao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908204"] = {
        npcs = {
            {
                id = 204901,
                alias = "Npc204901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908204dugushuo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908205"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908204Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 204901,
                alias = "Npc204901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908204dugushuo",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1908206"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908203Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 204501,
                alias = "Npc204501",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908203Mao",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

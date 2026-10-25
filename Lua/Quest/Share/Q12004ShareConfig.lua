main_id = 12004
local tbl = {}
local n = 1200403
local v = 1200402
tbl[1] = 1200401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1200401"] = {}, ["1200402"] = {}, ["1200403"] = {}}

quest_data = {
    ["1200401"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200401Ayaka",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200401Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1200402"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200401Ayaka",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200401Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1200403"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200401Ayaka",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200401Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

main_id = 19089
local tbl = {}
local n = 1908902
local v = 1908903
tbl[1] = 1908901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1908901"] = {},
    ["1908902"] = {
        npcs = {
            {
                id = 140901,
                alias = "Npc140901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908502selius",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908502Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1908903"] = {
        npcs = {
            {
                id = 140901,
                alias = "Npc140901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908502selius",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908101Noel",
                scene_id = 1004,
                room_id = 100401,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1908901"] = {
        npcs = {
            {
                id = 140901,
                alias = "Npc140901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908502selius",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908502Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1908902"] = {},
    ["1908903"] = {}
}

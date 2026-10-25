main_id = 22022
local tbl = {}
local n = 2202202
local v = 2202203
tbl[1] = 2202201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2202201"] = {},
    ["2202202"] = {
        npcs = {
            {
                id = 20270,
                alias = "Npc20270",
                script = "Actor/Npc/TempNPC",
                pos = "Q72800_Baerwanie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202203"] = {
        npcs = {
            {
                id = 20270,
                alias = "Npc20270",
                script = "Actor/Npc/TempNPC",
                pos = "Q72800_Baerwanie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2202201"] = {
        npcs = {
            {
                id = 20270,
                alias = "Npc20270",
                script = "Actor/Npc/TempNPC",
                pos = "Q72800_Baerwanie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202202"] = {},
    ["2202203"] = {}
}

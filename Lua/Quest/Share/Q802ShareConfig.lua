main_id = 802
local tbl = {}
local n = 80202
tbl[1] = 80201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["80201"] = {
        npcs = {
            {
                id = 96,
                alias = "Npc96",
                script = "Actor/Npc/TempNPC",
                pos = "Q80001test",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["80202"] = {
        npcs = {
            {
                id = 96,
                alias = "Npc96",
                script = "Actor/Npc/TempNPC",
                pos = "Q80001test",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["80201"] = {
        npcs = {
            {
                id = 96,
                alias = "Npc96",
                script = "Actor/Npc/TempNPC",
                pos = "Q80001test",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["80202"] = {
        npcs = {
            {
                id = 96,
                alias = "Npc96",
                script = "Actor/Npc/TempNPC",
                pos = "Q80001test",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

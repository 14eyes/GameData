main_id = 19058
local tbl = {}
local n = 1905803
tbl[1] = 1905801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1905801"] = {},
    ["1905803"] = {
        npcs = {
            {
                id = 13235,
                alias = "Npc13235",
                script = "Actor/Npc/TempNPC",
                pos = "C1905801_N13235",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1905801"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "C1905801_N515",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13235,
                alias = "Npc13235",
                script = "Actor/Npc/TempNPC",
                pos = "C1905801_N13235",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "C1905801_N515",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905803"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "C1905803_N515",
                scene_id = 1072,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "C1905803_N515",
                scene_id = 1072,
                room_id = 1,
                data_index = 2
            }
        }
    }
}

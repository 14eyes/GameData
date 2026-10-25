main_id = 19088
local tbl = {}
local n = 1908802
tbl[1] = 1908801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1908801"] = {},
    ["1908802"] = {
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
    }
}

quest_data = {
    ["1908801"] = {
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
    ["1908802"] = {}
}

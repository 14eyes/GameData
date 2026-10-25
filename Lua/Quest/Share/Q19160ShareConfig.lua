main_id = 19160
local tbl = {}
local n = 1916002
tbl[1] = 1916001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1916001"] = {},
    ["1916002"] = {
        npcs = {
            {
                id = 12910,
                alias = "Npc12910",
                script = "Actor/Npc/TempNPC",
                pos = "Q1915801_N12910",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1916001"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915902_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 12910,
                alias = "Npc12910",
                script = "Actor/Npc/TempNPC",
                pos = "Q1915801_N12910",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915902_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1916002"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915902_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915902_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            }
        }
    }
}

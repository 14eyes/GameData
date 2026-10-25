main_id = 75237
local tbl = {}
local n = 7523702
tbl[1] = 7523701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7523701"] = {},
    ["7523702"] = {
        npcs = {
            {
                id = 22087,
                alias = "Npc22087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200048:1628.546,269.566,15047.270,0.000,41.450,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7523701"] = {
        npcs = {
            {
                id = 22087,
                alias = "Npc22087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200048:1628.546,269.566,15047.270,0.000,41.450,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7523702"] = {}
}

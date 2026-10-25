main_id = 71536
local tbl = {}
local n = 7153602
local v = 7153603
local n2 = 7153604
tbl[1] = 7153601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7153601"] = {},
    ["7153602"] = {},
    ["7153603"] = {
        npcs = {
            {
                id = 30682,
                alias = "Npc30682",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702026:-472.676,209.120,342.215,0.000,191.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153604"] = {
        npcs = {
            {
                id = 30682,
                alias = "Npc30682",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702026:-472.676,209.120,342.215,0.000,191.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7153601"] = {},
    ["7153602"] = {
        npcs = {
            {
                id = 30682,
                alias = "Npc30682",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702026:-472.676,209.120,342.215,0.000,191.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702026:-472.676,209.120,342.215,0.000,191.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7153603"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702026:-472.676,209.120,342.215,0.000,191.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153604"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702026:-472.676,209.120,342.215,0.000,191.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

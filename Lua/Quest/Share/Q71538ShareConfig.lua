main_id = 71538
local tbl = {}
local n = 7153802
local v = 7153803
local n2 = 7153804
tbl[1] = 7153801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7153801"] = {},
    ["7153802"] = {},
    ["7153803"] = {
        npcs = {
            {
                id = 30684,
                alias = "Npc30684",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702028:-471.626,209.120,341.644,0.000,340.406,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153804"] = {
        npcs = {
            {
                id = 30684,
                alias = "Npc30684",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702028:-471.626,209.120,341.644,0.000,340.406,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7153801"] = {},
    ["7153802"] = {
        npcs = {
            {
                id = 30684,
                alias = "Npc30684",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702028:-471.626,209.120,341.644,0.000,340.406,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702028:-471.626,209.120,341.644,0.000,340.406,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7153803"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702028:-471.626,209.120,341.644,0.000,340.406,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153804"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702028:-471.626,209.120,341.644,0.000,340.406,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

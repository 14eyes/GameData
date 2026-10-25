main_id = 76051
local tbl = {}
local n = 7605102
local v = 7605103
tbl[1] = 7605101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"7605101"}}}}

rewind_data = {
    ["7605101"] = {},
    ["7605102"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300005:2138.599,108.775,11208.970,0.000,189.288,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15702,
                alias = "Npc15702",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300013:2138.439,108.790,11209.970,0.000,238.876,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7605103"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300005:2138.599,108.775,11208.970,0.000,189.288,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15702,
                alias = "Npc15702",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300013:2138.439,108.790,11209.970,0.000,238.876,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7605101"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300005:2138.599,108.775,11208.970,0.000,189.288,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15702,
                alias = "Npc15702",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300013:2138.439,108.790,11209.970,0.000,238.876,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7605102"] = {},
    ["7605103"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300005:2138.599,108.775,11208.970,0.000,189.288,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

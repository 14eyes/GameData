main_id = 70509
local tbl = {}
local n = 7050905
local v = 7050904
local n2 = 7050902
local n3 = 7050903
tbl[1] = 7050901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7050901"] = {},
    ["7050903"] = {
        npcs = {
            {
                id = 1045,
                alias = "Npc1045",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050903_N1045",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050905"] = {}
}

quest_data = {
    ["7050901"] = {
        npcs = {
            {
                id = 1045,
                alias = "Npc1045",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050901_N1045",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050902"] = {
        npcs = {
            {
                id = 1045,
                alias = "Npc1045",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050901_N1045",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050903"] = {
        gadgets = {
            {
                id = 70710668,
                alias = "Gadget70710668",
                pos = "Q7050903_juice_cup",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050904"] = {
        npcs = {
            {
                id = 1045,
                alias = "Npc1045",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050901_N1045",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050905"] = {
        npcs = {
            {
                id = 1045,
                alias = "Npc1045",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050901_N1045",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

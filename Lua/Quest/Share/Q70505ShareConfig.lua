main_id = 70505
local tbl = {}
local n = 7050505
local v = 7050504
local n2 = 7050502
local n3 = 7050503
tbl[1] = 7050501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7050501"] = {},
    ["7050503"] = {
        npcs = {
            {
                id = 1009,
                alias = "Npc1009",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050503_N1009",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050505"] = {}
}

quest_data = {
    ["7050501"] = {
        npcs = {
            {
                id = 1009,
                alias = "Npc1009",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050501_N1009",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050502"] = {
        npcs = {
            {
                id = 1009,
                alias = "Npc1009",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050501_N1009",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050503"] = {
        gadgets = {
            {
                id = 70710668,
                alias = "Gadget70710668",
                pos = "Q7050503_juice_cup",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050504"] = {
        npcs = {
            {
                id = 1009,
                alias = "Npc1009",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050501_N1009",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050505"] = {
        npcs = {
            {
                id = 1009,
                alias = "Npc1009",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050501_N1009",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

main_id = 73125
local tbl = {}
local n = 7312502
local v = 7312506
local n2 = 7312503
local n3 = 7312504
local n4 = 7312505
tbl[1] = 7312501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7312502"] = {},
    ["7312503"] = {},
    ["7312504"] = {
        npcs = {
            {
                id = 20691,
                alias = "Npc20691",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312503_N20691",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312505"] = {
        npcs = {
            {
                id = 20691,
                alias = "Npc20691",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312503_N20691",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312506"] = {}
}

quest_data = {
    ["7312501"] = {},
    ["7312502"] = {
        npcs = {
            {
                id = 20691,
                alias = "Npc20691",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312503_N20691",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312503"] = {
        npcs = {
            {
                id = 20691,
                alias = "Npc20691",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312503_N20691",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312504"] = {},
    ["7312505"] = {},
    ["7312506"] = {
        npcs = {
            {
                id = 20691,
                alias = "Npc20691",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312503_N20691",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

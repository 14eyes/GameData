main_id = 73128
local tbl = {}
local n = 7312802
local v = 7312806
local n2 = 7312803
local n3 = 7312804
local n4 = 7312805
tbl[1] = 7312801
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
    ["7312801"] = {},
    ["7312802"] = {},
    ["7312803"] = {},
    ["7312804"] = {
        npcs = {
            {
                id = 20694,
                alias = "Npc20694",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312803_N20694",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312805"] = {
        npcs = {
            {
                id = 20694,
                alias = "Npc20694",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312803_N20694",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312806"] = {}
}

quest_data = {
    ["7312801"] = {},
    ["7312802"] = {
        npcs = {
            {
                id = 20694,
                alias = "Npc20694",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312803_N20694",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312803"] = {
        npcs = {
            {
                id = 20694,
                alias = "Npc20694",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312803_N20694",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312804"] = {},
    ["7312805"] = {},
    ["7312806"] = {
        npcs = {
            {
                id = 20694,
                alias = "Npc20694",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312803_N20694",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

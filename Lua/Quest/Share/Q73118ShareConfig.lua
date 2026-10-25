main_id = 73118
local tbl = {}
local n = 7311802
local v = 7311806
local n2 = 7311803
local n3 = 7311804
local n4 = 7311805
tbl[1] = 7311801
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
    ["7311802"] = {},
    ["7311803"] = {},
    ["7311804"] = {
        npcs = {
            {
                id = 20685,
                alias = "Npc20685",
                script = "Actor/Npc/TempNPC",
                pos = "Q7311803_N20685",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7311805"] = {
        npcs = {
            {
                id = 20685,
                alias = "Npc20685",
                script = "Actor/Npc/TempNPC",
                pos = "Q7311803_N20685",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7311806"] = {}
}

quest_data = {
    ["7311801"] = {},
    ["7311802"] = {
        npcs = {
            {
                id = 20685,
                alias = "Npc20685",
                script = "Actor/Npc/TempNPC",
                pos = "Q7311803_N20685",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7311803"] = {
        npcs = {
            {
                id = 20685,
                alias = "Npc20685",
                script = "Actor/Npc/TempNPC",
                pos = "Q7311803_N20685",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7311804"] = {},
    ["7311805"] = {},
    ["7311806"] = {
        npcs = {
            {
                id = 20685,
                alias = "Npc20685",
                script = "Actor/Npc/TempNPC",
                pos = "Q7311803_N20685",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

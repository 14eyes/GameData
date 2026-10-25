main_id = 73098
local tbl = {}
local n = 7309801
local v = 7309802
local n2 = 7309805
local n3 = 7309803
tbl[1] = 7309804
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7309801"] = {
        npcs = {
            {
                id = 20762,
                alias = "Npc20762",
                script = "Actor/Npc/TempNPC",
                pos = "Q7309801_N4186",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7309802"] = {
        npcs = {
            {
                id = 20762,
                alias = "Npc20762",
                script = "Actor/Npc/TempNPC",
                pos = "Q7309801_N4186",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7309803"] = {
        npcs = {
            {
                id = 20762,
                alias = "Npc20762",
                script = "Actor/Npc/TempNPC",
                pos = "Q7309801_N4186",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7309801_N4186_2138",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7309804"] = {},
    ["7309805"] = {
        npcs = {
            {
                id = 20762,
                alias = "Npc20762",
                script = "Actor/Npc/TempNPC",
                pos = "Q7309801_N4186",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7309801"] = {},
    ["7309802"] = {},
    ["7309803"] = {
        npcs = {
            {
                id = 20762,
                alias = "Npc20762",
                script = "Actor/Npc/TempNPC",
                pos = "Q7309801_N4186",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7309801_N4186_2138",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7309804"] = {
        npcs = {
            {
                id = 20762,
                alias = "Npc20762",
                script = "Actor/Npc/TempNPC",
                pos = "Q7309801_N4186",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7309805"] = {}
}

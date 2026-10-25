main_id = 73123
local tbl = {}
local n = 7312302
local v = 7312306
local n2 = 7312303
local n3 = 7312304
local n4 = 7312305
tbl[1] = 7312301
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
    ["7312302"] = {},
    ["7312303"] = {},
    ["7312304"] = {
        npcs = {
            {
                id = 20689,
                alias = "Npc20689",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312303_N20689",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312305"] = {
        npcs = {
            {
                id = 20689,
                alias = "Npc20689",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312303_N20689",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312306"] = {}
}

quest_data = {
    ["7312301"] = {},
    ["7312302"] = {
        npcs = {
            {
                id = 20689,
                alias = "Npc20689",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312303_N20689",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312303"] = {
        npcs = {
            {
                id = 20689,
                alias = "Npc20689",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312303_N20689",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312304"] = {},
    ["7312305"] = {},
    ["7312306"] = {
        npcs = {
            {
                id = 20689,
                alias = "Npc20689",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312303_N20689",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

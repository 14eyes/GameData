main_id = 73122
local tbl = {}
local n = 7312202
local v = 7312206
local n2 = 7312203
local n3 = 7312204
local n4 = 7312205
tbl[1] = 7312201
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
    ["7312202"] = {},
    ["7312203"] = {},
    ["7312204"] = {
        npcs = {
            {
                id = 20688,
                alias = "Npc20688",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312203_N20688",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312205"] = {
        npcs = {
            {
                id = 20688,
                alias = "Npc20688",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312203_N20688",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312206"] = {}
}

quest_data = {
    ["7312201"] = {},
    ["7312202"] = {
        npcs = {
            {
                id = 20688,
                alias = "Npc20688",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312203_N20688",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312203"] = {
        npcs = {
            {
                id = 20688,
                alias = "Npc20688",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312203_N20688",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7312204"] = {},
    ["7312205"] = {},
    ["7312206"] = {
        npcs = {
            {
                id = 20688,
                alias = "Npc20688",
                script = "Actor/Npc/TempNPC",
                pos = "Q7312203_N20688",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

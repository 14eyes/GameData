main_id = 73162
local tbl = {}
local n = 7316202
local v = 7316205
local n2 = 7316203
local n3 = 7316204
tbl[1] = 7316201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7316202"] = {},
    ["7316203"] = {},
    ["7316204"] = {
        npcs = {
            {
                id = 20700,
                alias = "Npc20700",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316202_N20700",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316205"] = {}
}

quest_data = {
    ["7316201"] = {},
    ["7316202"] = {
        npcs = {
            {
                id = 20700,
                alias = "Npc20700",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316202_N20700",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316203"] = {
        npcs = {
            {
                id = 20700,
                alias = "Npc20700",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316202_N20700",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7316204"] = {},
    ["7316205"] = {
        npcs = {
            {
                id = 20700,
                alias = "Npc20700",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316202_N20700",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

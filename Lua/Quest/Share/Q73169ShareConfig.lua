main_id = 73169
local tbl = {}
local n = 7316902
local v = 7316905
local n2 = 7316903
local n3 = 7316904
tbl[1] = 7316901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7316902"] = {},
    ["7316903"] = {},
    ["7316904"] = {
        npcs = {
            {
                id = 20707,
                alias = "Npc20707",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316902_N20707",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316905"] = {}
}

quest_data = {
    ["7316901"] = {},
    ["7316902"] = {
        npcs = {
            {
                id = 20707,
                alias = "Npc20707",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316902_N20707",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316903"] = {
        npcs = {
            {
                id = 20707,
                alias = "Npc20707",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316902_N20707",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7316904"] = {},
    ["7316905"] = {
        npcs = {
            {
                id = 20707,
                alias = "Npc20707",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316902_N20707",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

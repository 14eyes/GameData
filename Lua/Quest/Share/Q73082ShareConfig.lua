main_id = 73082
local tbl = {}
local n = 7308204
local v = 7308205
local n2 = 7308202
local n3 = 7308203
tbl[1] = 7308201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7308202"] = {},
    ["7308203"] = {
        npcs = {
            {
                id = 20671,
                alias = "Npc20671",
                script = "Actor/Npc/TempNPC",
                pos = "Q7308202_N20671",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7308204"] = {},
    ["7308205"] = {}
}

quest_data = {
    ["7308201"] = {},
    ["7308202"] = {
        npcs = {
            {
                id = 20671,
                alias = "Npc20671",
                script = "Actor/Npc/TempNPC",
                pos = "Q7308202_N20671",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7308203"] = {},
    ["7308204"] = {
        npcs = {
            {
                id = 20671,
                alias = "Npc20671",
                script = "Actor/Npc/TempNPC",
                pos = "Q7308202_N20671",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7308205"] = {
        npcs = {
            {
                id = 20671,
                alias = "Npc20671",
                script = "Actor/Npc/TempNPC",
                pos = "Q7308202_N20671",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

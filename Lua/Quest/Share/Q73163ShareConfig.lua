main_id = 73163
local tbl = {}
local n = 7316302
local v = 7316305
local n2 = 7316303
local n3 = 7316304
tbl[1] = 7316301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7316302"] = {},
    ["7316303"] = {},
    ["7316304"] = {
        npcs = {
            {
                id = 20701,
                alias = "Npc20701",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316302_N20701",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316305"] = {}
}

quest_data = {
    ["7316301"] = {},
    ["7316302"] = {
        npcs = {
            {
                id = 20701,
                alias = "Npc20701",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316302_N20701",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316303"] = {
        npcs = {
            {
                id = 20701,
                alias = "Npc20701",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316302_N20701",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7316304"] = {},
    ["7316305"] = {
        npcs = {
            {
                id = 20701,
                alias = "Npc20701",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316302_N20701",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

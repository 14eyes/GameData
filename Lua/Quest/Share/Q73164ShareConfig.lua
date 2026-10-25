main_id = 73164
local tbl = {}
local n = 7316402
local v = 7316405
local n2 = 7316403
local n3 = 7316404
tbl[1] = 7316401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7316402"] = {},
    ["7316403"] = {},
    ["7316404"] = {
        npcs = {
            {
                id = 20702,
                alias = "Npc20702",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316402_N20702",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316405"] = {}
}

quest_data = {
    ["7316401"] = {},
    ["7316402"] = {
        npcs = {
            {
                id = 20702,
                alias = "Npc20702",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316402_N20702",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316403"] = {
        npcs = {
            {
                id = 20702,
                alias = "Npc20702",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316402_N20702",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7316404"] = {},
    ["7316405"] = {
        npcs = {
            {
                id = 20702,
                alias = "Npc20702",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316402_N20702",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

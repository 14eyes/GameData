main_id = 72655
local tbl = {}
local n = 7265502
local v = 7265503
local n2 = 7265504
local n3 = 7265505
local n4 = 7265506
tbl[1] = 7265501
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
    ["7265501"] = {},
    ["7265502"] = {},
    ["7265504"] = {
        npcs = {
            {
                id = 30055,
                alias = "Npc30055",
                script = "Actor/Npc/TempNPC",
                pos = "Q72655muzhen",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7265501"] = {},
    ["7265502"] = {
        gadgets = {
            {
                id = 70950059,
                alias = "Gadget70950059",
                pos = "Q72655gate",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7265503"] = {
        npcs = {
            {
                id = 30055,
                alias = "Npc30055",
                script = "Actor/Npc/TempNPC",
                pos = "Q72655muzhen",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7265504"] = {},
    ["7265505"] = {},
    ["7265506"] = {}
}

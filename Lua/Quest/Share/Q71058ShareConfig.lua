main_id = 71058
local tbl = {}
local n = 7105802
local v = 7105803
local n2 = 7105804
local n3 = 7105805
local n4 = 7105806
tbl[1] = 7105801
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
    ["7105801"] = {},
    ["7105802"] = {},
    ["7105803"] = {},
    ["7105804"] = {},
    ["7105805"] = {},
    ["7105806"] = {
        npcs = {
            {
                id = 20535,
                alias = "Npc20535",
                script = "Actor/Npc/TempNPC",
                pos = "Q71038KALA",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7105801"] = {},
    ["7105802"] = {
        npcs = {
            {
                id = 20535,
                alias = "Npc20535",
                script = "Actor/Npc/TempNPC",
                pos = "Q7105802_N20535",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7105803"] = {},
    ["7105804"] = {
        npcs = {
            {
                id = 20535,
                alias = "Npc20535",
                script = "Actor/Npc/TempNPC",
                pos = "Q7105802_N20535",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7105805"] = {
        npcs = {
            {
                id = 20535,
                alias = "Npc20535",
                script = "Actor/Npc/TempNPC",
                pos = "Q71038KALA",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7105806"] = {}
}

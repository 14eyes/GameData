main_id = 73168
local tbl = {}
local n = 7316802
local v = 7316805
local n2 = 7316803
local n3 = 7316804
tbl[1] = 7316801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7316801"] = {},
    ["7316802"] = {},
    ["7316803"] = {},
    ["7316804"] = {
        npcs = {
            {
                id = 20706,
                alias = "Npc20706",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316802_N20706",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316805"] = {}
}

quest_data = {
    ["7316801"] = {},
    ["7316802"] = {
        npcs = {
            {
                id = 20706,
                alias = "Npc20706",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316802_N20706",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316803"] = {
        npcs = {
            {
                id = 20706,
                alias = "Npc20706",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316802_N20706",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7316804"] = {},
    ["7316805"] = {
        npcs = {
            {
                id = 20706,
                alias = "Npc20706",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316802_N20706",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

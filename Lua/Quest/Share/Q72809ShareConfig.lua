main_id = 72809
local tbl = {}
local n = 7280902
local v = 7280903
local n2 = 7280904
local n3 = 7280905
local n4 = 7280906
local n5 = 7280907
tbl[1] = 7280901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7280903"] = {},
    ["7280904"] = {},
    ["7280905"] = {},
    ["7280906"] = {},
    ["7280907"] = {
        npcs = {
            {
                id = 3083,
                alias = "Npc3083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72809_TANSUOYINGDI",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7280901"] = {},
    ["7280902"] = {},
    ["7280903"] = {},
    ["7280904"] = {},
    ["7280905"] = {
        npcs = {
            {
                id = 3083,
                alias = "Npc3083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72809_TANSUOYINGDI",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280906"] = {
        npcs = {
            {
                id = 3083,
                alias = "Npc3083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72809_TANSUOYINGDI",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280907"] = {}
}

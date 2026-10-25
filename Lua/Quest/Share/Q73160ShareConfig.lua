main_id = 73160
local tbl = {}
local n = 7316002
local v = 7316005
local n2 = 7316003
local n3 = 7316004
tbl[1] = 7316001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7316002"] = {},
    ["7316003"] = {},
    ["7316004"] = {
        npcs = {
            {
                id = 20698,
                alias = "Npc20698",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316002_N20698",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316005"] = {}
}

quest_data = {
    ["7316001"] = {},
    ["7316002"] = {
        npcs = {
            {
                id = 20698,
                alias = "Npc20698",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316002_N20698",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316003"] = {
        npcs = {
            {
                id = 20698,
                alias = "Npc20698",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316002_N20698",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7316004"] = {},
    ["7316005"] = {
        npcs = {
            {
                id = 20698,
                alias = "Npc20698",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316002_N20698",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

main_id = 73161
local tbl = {}
local n = 7316102
local v = 7316105
local n2 = 7316103
local n3 = 7316104
tbl[1] = 7316101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7316102"] = {},
    ["7316103"] = {},
    ["7316104"] = {
        npcs = {
            {
                id = 20699,
                alias = "Npc20699",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316102_N20699",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7316105"] = {}
}

quest_data = {
    ["7316101"] = {},
    ["7316102"] = {
        npcs = {
            {
                id = 20699,
                alias = "Npc20699",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316102_N20699",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316103"] = {
        npcs = {
            {
                id = 20699,
                alias = "Npc20699",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316102_N20699",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7316104"] = {},
    ["7316105"] = {
        npcs = {
            {
                id = 20699,
                alias = "Npc20699",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316102_N20699",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

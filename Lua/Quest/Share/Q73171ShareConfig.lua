main_id = 73171
local tbl = {}
local n = 7317102
local v = 7317105
local n2 = 7317103
local n3 = 7317104
tbl[1] = 7317101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7317102"] = {},
    ["7317103"] = {},
    ["7317104"] = {
        npcs = {
            {
                id = 20709,
                alias = "Npc20709",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317102_N20709",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7317105"] = {}
}

quest_data = {
    ["7317101"] = {},
    ["7317102"] = {
        npcs = {
            {
                id = 20709,
                alias = "Npc20709",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317102_N20709",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7317103"] = {
        npcs = {
            {
                id = 20709,
                alias = "Npc20709",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317102_N20709",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7317104"] = {},
    ["7317105"] = {
        npcs = {
            {
                id = 20709,
                alias = "Npc20709",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317102_N20709",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

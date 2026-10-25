main_id = 73170
local tbl = {}
local n = 7317002
local v = 7317005
local n2 = 7317003
local n3 = 7317004
tbl[1] = 7317001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7317002"] = {},
    ["7317003"] = {},
    ["7317004"] = {
        npcs = {
            {
                id = 20708,
                alias = "Npc20708",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317002_N20708",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7317005"] = {}
}

quest_data = {
    ["7317001"] = {},
    ["7317002"] = {
        npcs = {
            {
                id = 20708,
                alias = "Npc20708",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317002_N20708",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7317003"] = {
        npcs = {
            {
                id = 20708,
                alias = "Npc20708",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317002_N20708",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7317004"] = {},
    ["7317005"] = {
        npcs = {
            {
                id = 20708,
                alias = "Npc20708",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317002_N20708",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

main_id = 73130
local tbl = {}
local n = 7313002
local v = 7313006
local n2 = 7313003
local n3 = 7313004
local n4 = 7313005
tbl[1] = 7313001
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
    ["7313002"] = {},
    ["7313003"] = {},
    ["7313004"] = {
        npcs = {
            {
                id = 20696,
                alias = "Npc20696",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313003_N20696",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7313005"] = {
        npcs = {
            {
                id = 20696,
                alias = "Npc20696",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313003_N20696",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7313006"] = {}
}

quest_data = {
    ["7313001"] = {},
    ["7313002"] = {
        npcs = {
            {
                id = 20696,
                alias = "Npc20696",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313003_N20696",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7313003"] = {
        npcs = {
            {
                id = 20696,
                alias = "Npc20696",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313003_N20696",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7313004"] = {},
    ["7313005"] = {},
    ["7313006"] = {
        npcs = {
            {
                id = 20696,
                alias = "Npc20696",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313003_N20696",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

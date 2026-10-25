main_id = 71539
local tbl = {}
local n = 7153902
local v = 7153903
local n2 = 7153904
tbl[1] = 7153901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121147"}}}}

rewind_data = {
    ["7153901"] = {},
    ["7153902"] = {},
    ["7153903"] = {
        npcs = {
            {
                id = 30685,
                alias = "Npc30685",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702030:-473.947,209.902,340.950,0.000,22.076,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153904"] = {
        npcs = {
            {
                id = 30685,
                alias = "Npc30685",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702030:-473.947,209.902,340.950,0.000,22.076,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7153901"] = {},
    ["7153902"] = {
        npcs = {
            {
                id = 30685,
                alias = "Npc30685",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702030:-473.947,209.902,340.950,0.000,22.076,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153903"] = {},
    ["7153904"] = {}
}

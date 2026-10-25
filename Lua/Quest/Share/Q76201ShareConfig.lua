main_id = 76201
local tbl = {}
local n = 7620102
local v = 7620103
local n2 = 7620104
tbl[1] = 7620101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7620101"] = {}, ["7620102"] = {}, ["7620103"] = {}, ["7620104"] = {}}

quest_data = {
    ["7620101"] = {},
    ["7620102"] = {
        npcs = {
            {
                id = 16562,
                alias = "Npc16562",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15872:1825.854,209.632,9564.927]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7620103"] = {
        npcs = {
            {
                id = 7036,
                alias = "Npc7036",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16327:1821.290,212.391,9584.688,0.000,303.438,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7035,
                alias = "Npc7035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16327:1821.290,212.391,9584.688,0.000,303.438,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7620104"] = {
        npcs = {
            {
                id = 7036,
                alias = "Npc7036",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16327:1821.290,212.391,9584.688,0.000,303.438,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7035,
                alias = "Npc7035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16326:1819.919,212.139,9583.548,0.000,335.676,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

main_id = 607
local tbl = {}
local n = 60701
local v = 60702
local n2 = 60703
local n3 = 60704
tbl[1] = 60705
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["60701"] = {}, ["60702"] = {}, ["60703"] = {}, ["60704"] = {}, ["60705"] = {}}

quest_data = {
    ["60701"] = {
        npcs = {
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_31:2215.777,209.990,-878.603,0.000,36.368,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["60702"] = {},
    ["60703"] = {
        npcs = {
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_31:2215.777,209.990,-878.603,0.000,36.368,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["60704"] = {
        npcs = {
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_37:2222.234,210.090,-871.355,0.000,348.764,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_38:2220.664,210.090,-871.717,0.000,20.631,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["60705"] = {
        npcs = {
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_31:2215.777,209.990,-878.603,0.000,36.368,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_38:2220.664,210.090,-871.717,0.000,20.631,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

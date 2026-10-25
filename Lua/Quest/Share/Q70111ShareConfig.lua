main_id = 70111
local tbl = {}
local n = 7011102
local v = 7011104
local n2 = 7011103
tbl[1] = 7011101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7011101"] = {}, ["7011102"] = {}, ["7011103"] = {}}

quest_data = {
    ["7011101"] = {
        npcs = {
            {
                id = 1826,
                alias = "Npc1826",
                script = "Actor/Npc/TempNPC",
                pos = "[103_224:320.496,205.938,572.010,0.000,42.057,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7011102"] = {
        npcs = {
            {
                id = 1826,
                alias = "Npc1826",
                script = "Actor/Npc/TempNPC",
                pos = "[103_224:320.496,205.938,572.010,0.000,42.057,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7011103"] = {
        npcs = {
            {
                id = 1826,
                alias = "Npc1826",
                script = "Actor/Npc/TempNPC",
                pos = "[103_228:360.886,202.937,617.510,0.000,17.527,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7011104"] = {}
}

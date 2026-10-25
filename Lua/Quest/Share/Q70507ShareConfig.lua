main_id = 70507
local tbl = {}
local n = 7050705
local v = 7050704
local n2 = 7050702
local n3 = 7050703
tbl[1] = 7050701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7050701"] = {},
    ["7050703"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050703_N10232",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050705"] = {}
}

quest_data = {
    ["7050701"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050701_N10232",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050702"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050701_N10232",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050703"] = {
        gadgets = {
            {
                id = 70710667,
                alias = "Gadget70710667",
                pos = "Q7050703_tea_cup",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050704"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050701_N10232",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050705"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050701_N10232",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

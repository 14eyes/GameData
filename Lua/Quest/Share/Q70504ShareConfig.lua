main_id = 70504
local tbl = {}
local n = 7050406
local v = 7050405
local n2 = 7050403
local n3 = 7050402
local n4 = 7050404
tbl[1] = 7050401
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
    ["7050401"] = {},
    ["7050404"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q7050401_N1004",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050406"] = {}
}

quest_data = {
    ["7050401"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q7050401_N1004",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050401_N1020",
                scene_id = 1068,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7050402"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q7050401_N1004",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050404_N1020",
                scene_id = 1068,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7050403"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q7050401_N1004",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050404_N1020",
                scene_id = 1068,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7050404"] = {
        npcs = {
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050404_N1020",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710667,
                alias = "Gadget70710667",
                pos = "Q7050404_tea_cup",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            },
            {
                id = 70710666,
                alias = "Gadget70710666",
                pos = "Q7050404_coffee_cup",
                scene_id = 1068,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7050405"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q7050401_N1004",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050401_N1020",
                scene_id = 1068,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7050406"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q7050401_N1004",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050401_N1020",
                scene_id = 1068,
                room_id = 1,
                data_index = 2
            }
        }
    }
}

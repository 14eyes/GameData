main_id = 70503
local tbl = {}
local n = 7050305
local v = 7050304
local n2 = 7050302
local n3 = 7050303
tbl[1] = 7050301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7050301"] = {},
    ["7050303"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050301_N1029",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050305"] = {}
}

quest_data = {
    ["7050301"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050301_N1029",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050302"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050301_N1029",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050303"] = {
        gadgets = {
            {
                id = 70710666,
                alias = "Gadget70710666",
                pos = "Q7050303_coffee_cup",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050304"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050301_N1029",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050305"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050301_N1029",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

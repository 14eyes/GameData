main_id = 8001
local tbl = {}
local n = 800102
local v = 800103
local n2 = 800104
local n3 = 800105
local n4 = 800109
local n5 = 800108
local n6 = 800106
local n7 = 800107
tbl[1] = 800101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["800101"] = {avatar = {offline_dungeon_id = 0, scene_id = 3, pos = "Q8001Avatar"}},
    ["800102"] = {},
    ["800103"] = {avatar = {offline_dungeon_id = 0, scene_id = 3, pos = "Q8001Avatar3"}},
    ["800104"] = {},
    ["800105"] = {avatar = {offline_dungeon_id = 0, scene_id = 3, pos = "Q8001Avatar2"}},
    ["800106"] = {},
    ["800107"] = {avatar = {offline_dungeon_id = 0, scene_id = 3, pos = "Q8001Avatar4"}},
    ["800108"] = {
        npcs = {
            {
                id = 10919,
                alias = "AbyssFire",
                script = "Actor/Npc/TempNPC",
                pos = "Q8001AbyssMage",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10920,
                alias = "Npc10920",
                script = "Actor/Npc/TempNPC",
                pos = "Q8001AbyssMage2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800109"] = {}
}

quest_data = {
    ["800101"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8001Dainsleif",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800102"] = {},
    ["800103"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8001Dainsleif2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800104"] = {},
    ["800105"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8001Dainsleif3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800106"] = {},
    ["800107"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8001Dainsleif4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10919,
                alias = "AbyssFire",
                script = "Actor/Npc/TempNPC",
                pos = "Q8001AbyssMage3",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710324,
                alias = "Gadget70710324",
                pos = "Q8001AbyssSpell",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800108"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8001Dainsleif4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800109"] = {
        npcs = {
            {
                id = 10919,
                alias = "AbyssFire",
                script = "Actor/Npc/TempNPC",
                pos = "Q8001AbyssMage",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10920,
                alias = "Npc10920",
                script = "Actor/Npc/TempNPC",
                pos = "Q8001AbyssMage2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

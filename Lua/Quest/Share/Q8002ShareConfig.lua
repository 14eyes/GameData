main_id = 8002
local tbl = {}
local n = 800209
local v = 800202
local n2 = 800210
local n3 = 800203
local n4 = 800204
local n5 = 800205
local n6 = 800206
local n7 = 800211
local n8 = 800207
local n9 = 800212
local n10 = 800208
tbl[1] = 800201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["800201"] = {},
    ["800202"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Dainsleif",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800203"] = {},
    ["800204"] = {},
    ["800205"] = {},
    ["800206"] = {},
    ["800207"] = {
        npcs = {
            {
                id = 1176,
                alias = "WolfBoss",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Boreas",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Wolvendom2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800209"] = {avatar = {offline_dungeon_id = 0, scene_id = 3, pos = "Q8002Avatar2"}},
    ["800210"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Dainsleif",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800211"] = {
        npcs = {
            {
                id = 1176,
                alias = "WolfBoss",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Boreas",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Wolvendom2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10916,
                alias = "Npc10916",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002AbyssInvoker",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["800208"] = {
        npcs = {
            {
                id = 1176,
                alias = "WolfBoss",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Boreas",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Wolvendom2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["800201"] = {},
    ["800202"] = {
        npcs = {
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "Q8002Barbara",
                scene_id = 1008,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Rosaria",
                scene_id = 1008,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["800203"] = {},
    ["800204"] = {},
    ["800205"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q8002Jean",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Dainsleif2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800206"] = {
        npcs = {
            {
                id = 1176,
                alias = "WolfBoss",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Boreas",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Wolvendom2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10916,
                alias = "Npc10916",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002AbyssInvoker",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["800207"] = {},
    ["800208"] = {
        npcs = {
            {
                id = 10916,
                alias = "Npc10916",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002AbyssInvoker",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800209"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8002Dainsleif",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800210"] = {},
    ["800211"] = {},
    ["800212"] = {}
}

main_id = 2002
local tbl = {}
local n = 200203
local v = 200213
local n2 = 200204
local n3 = 200201
local n4 = 200205
local n5 = 200206
local n6 = 200207
local n7 = 200208
local n8 = 200209
local n9 = 200210
local n10 = 200211
local n11 = 200212
tbl[1] = 200202
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
tbl[13] = n11
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["200201"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200204Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200202"] = {},
    ["200203"] = {},
    ["200206"] = {},
    ["200209"] = {},
    ["200211"] = {
        npcs = {
            {
                id = 10414,
                alias = "Npc10414",
                script = "Actor/Npc/TempNPC",
                pos = "Q200211Npc",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200212"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200212Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["200201"] = {},
    ["200202"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200202Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200202Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10419,
                alias = "Npc10419",
                script = "Actor/Npc/TempNPC",
                pos = "Q200202Player",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10420,
                alias = "Npc10420",
                script = "Actor/Npc/TempNPC",
                pos = "Q200202Player",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["200203"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200204Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200204Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710357,
                alias = "Gadget70710357",
                pos = "Q200203Vision",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200204"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200204Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200204Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200205"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200204Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q200202Player"}}
    },
    ["200206"] = {
        gadgets = {
            {
                id = 70710358,
                alias = "Gadget70710358",
                pos = "Q200206Clue",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200207"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q200206Clue"}}},
    ["200208"] = {},
    ["200209"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200209Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10414,
                alias = "Npc10414",
                script = "Actor/Npc/TempNPC",
                pos = "Q200209Npc",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710386,
                alias = "Gadget70710386",
                pos = "Q200209Gadget",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200210"] = {
        npcs = {
            {
                id = 10414,
                alias = "Npc10414",
                script = "Actor/Npc/TempNPC",
                pos = "Q200209Npc",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200211"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200209Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710386,
                alias = "Gadget70710386",
                pos = "Q200211Gadget",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2000102Player"}}
    },
    ["200212"] = {
        npcs = {
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q200229Baiwen",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200213"] = {}
}

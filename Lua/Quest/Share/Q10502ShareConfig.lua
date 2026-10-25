main_id = 10502
local tbl = {}
local n = 1050202
local v = 1050203
local n2 = 1050204
local n3 = 1050205
local n4 = 1050206
local n5 = 1050207
local n6 = 1050212
local n7 = 1050213
local n8 = 1050208
local n9 = 1050209
local n10 = 1050210
local n11 = 1050211
tbl[1] = 1050201
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
local tbl2 = {["1050201"] = {}, ["1050202"] = {}}

local tbl3 = {
    npcs = {
        {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            pos = "Q10502MonaSpawn",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 10111,
            alias = "Npc10111",
            script = "Actor/Npc/TempNPC",
            pos = "Q10500SlimeSpawn",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        }
    },
    gadgets = {
        {
            id = 70710136,
            alias = "Q10502GeneralBook",
            pos = "Q10502GeneralBook",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 70710139,
            alias = "Q10502Ruler",
            pos = "Q10502Ruler",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 70710138,
            alias = "Q10502InkBottle",
            pos = "Q10502InkBottle",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 70710140,
            alias = "Q10502RolledMap",
            pos = "Q10502RolledMap",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        },
        {
            id = 70710115,
            alias = "Q10502OpenBook",
            pos = "Q10502OpenBook",
            scene_id = 3,
            room_id = 0,
            data_index = 5
        },
        {
            id = 70710137,
            alias = "Q10502Magnifier",
            pos = "Q10502Magnifier",
            scene_id = 3,
            room_id = 0,
            data_index = 6
        }
    }
}

local quest_var = {}
local n12 = 0
local n13 = 0
local n14 = 0
local n15 = 0
quest_var[1] = 2
quest_var[2] = n12
quest_var[3] = n13
quest_var[4] = n14
quest_var[5] = n15
tbl3.quest_var = quest_var
tbl2["1050203"] = tbl3

tbl2["1050204"] = {
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10502KleeSpawn",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 10111,
            alias = "Npc10111",
            script = "Actor/Npc/TempNPC",
            pos = "Q10502Fengqidi",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        }
    }
}

tbl2["1050205"] = {
    npcs = {
        {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            pos = "Q10502MonaSpawn2",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    },
    gadgets = {
        {
            id = 70710165,
            alias = "Q10502Diary",
            pos = "Q10502Diary",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 70710136,
            alias = "Q10502GeneralBook2",
            pos = "Q10502GeneralBook2",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 70710136,
            alias = "Q10502GeneralBook3",
            pos = "Q10502GeneralBook3",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 70710139,
            alias = "Q10502Ruler2",
            pos = "Q10502Ruler2",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        },
        {
            id = 70710138,
            alias = "Q10502InkBottle2",
            pos = "Q10502InkBottle2",
            scene_id = 3,
            room_id = 0,
            data_index = 5
        },
        {
            id = 70710140,
            alias = "Q10502RolledMap2",
            pos = "Q10502RolledMap2",
            scene_id = 3,
            room_id = 0,
            data_index = 6
        },
        {
            id = 70710137,
            alias = "Q10502Magnifier2",
            pos = "Q10502Magnifier2",
            scene_id = 3,
            room_id = 0,
            data_index = 7
        }
    }
}

tbl2["1050206"] = {
    npcs = {
        {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            pos = "Q10502MonaSpawn2",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    },
    gadgets = {
        {
            id = 70710165,
            alias = "Q10502Diary",
            pos = "Q10502Diary",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 70710136,
            alias = "Q10502GeneralBook2",
            pos = "Q10502GeneralBook2",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 70710136,
            alias = "Q10502GeneralBook3",
            pos = "Q10502GeneralBook3",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 70710139,
            alias = "Q10502Ruler2",
            pos = "Q10502Ruler2",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        },
        {
            id = 70710138,
            alias = "Q10502InkBottle2",
            pos = "Q10502InkBottle2",
            scene_id = 3,
            room_id = 0,
            data_index = 5
        },
        {
            id = 70710140,
            alias = "Q10502RolledMap2",
            pos = "Q10502RolledMap2",
            scene_id = 3,
            room_id = 0,
            data_index = 6
        },
        {
            id = 70710137,
            alias = "Q10502Magnifier2",
            pos = "Q10502Magnifier2",
            scene_id = 3,
            room_id = 0,
            data_index = 7
        }
    }
}

tbl2["1050207"] = {
    npcs = {
        {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            pos = "Q10502MonaSpawn2",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    },
    gadgets = {
        {
            id = 70710165,
            alias = "Q10502Diary",
            pos = "Q10502Diary",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 70710136,
            alias = "Q10502GeneralBook2",
            pos = "Q10502GeneralBook2",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 70710136,
            alias = "Q10502GeneralBook3",
            pos = "Q10502GeneralBook3",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 70710139,
            alias = "Q10502Ruler2",
            pos = "Q10502Ruler2",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        },
        {
            id = 70710138,
            alias = "Q10502InkBottle2",
            pos = "Q10502InkBottle2",
            scene_id = 3,
            room_id = 0,
            data_index = 5
        },
        {
            id = 70710140,
            alias = "Q10502RolledMap2",
            pos = "Q10502RolledMap2",
            scene_id = 3,
            room_id = 0,
            data_index = 6
        },
        {
            id = 70710137,
            alias = "Q10502Magnifier2",
            pos = "Q10502Magnifier2",
            scene_id = 3,
            room_id = 0,
            data_index = 7
        }
    }
}

tbl2["1050208"] = {}
tbl2["1050209"] = {}
tbl2["1050211"] = {}
rewind_data = tbl2

quest_data = {
    ["1050201"] = {},
    ["1050202"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10502MonaSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710136,
                alias = "Q10502GeneralBook",
                pos = "Q10502GeneralBook",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710139,
                alias = "Q10502Ruler",
                pos = "Q10502Ruler",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710138,
                alias = "Q10502InkBottle",
                pos = "Q10502InkBottle",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710140,
                alias = "Q10502RolledMap",
                pos = "Q10502RolledMap",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 70710115,
                alias = "Q10502OpenBook",
                pos = "Q10502OpenBook",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 70710137,
                alias = "Q10502Magnifier",
                pos = "Q10502Magnifier",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1050203"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q10502KleeSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10111,
                alias = "Npc10111",
                script = "Actor/Npc/TempNPC",
                pos = "Q10502Fengqidi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1050204"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10502MonaSpawn2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710165,
                alias = "Q10502Diary",
                pos = "Q10502Diary",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710136,
                alias = "Q10502GeneralBook2",
                pos = "Q10502GeneralBook2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710136,
                alias = "Q10502GeneralBook3",
                pos = "Q10502GeneralBook3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710139,
                alias = "Q10502Ruler2",
                pos = "Q10502Ruler2",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 70710138,
                alias = "Q10502InkBottle2",
                pos = "Q10502InkBottle2",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 70710140,
                alias = "Q10502RolledMap2",
                pos = "Q10502RolledMap2",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 70710137,
                alias = "Q10502Magnifier2",
                pos = "Q10502Magnifier2",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1050205"] = {},
    ["1050206"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q10502KleeSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710114,
                alias = "Q1050203Box",
                pos = "Q1050203Box",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10502AvatarSpawn2"}}
    },
    ["1050207"] = {
        gadgets = {{id = 70710114, alias = "Q10502Box", pos = "Q10502Box", scene_id = 3, room_id = 0, data_index = 1}}
    },
    ["1050208"] = {},
    ["1050209"] = {},
    ["1050210"] = {},
    ["1050211"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10502MonaSpawn3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1606,
                alias = "Npc1606",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1050206Gede",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1050212"] = {},
    ["1050213"] = {}
}

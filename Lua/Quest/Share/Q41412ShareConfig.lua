main_id = 41412
local tbl = {}
local n = 4141202
local v = 4141203
local n2 = 4141204
local n3 = 4141205
local n4 = 4141206
local n5 = 4141207
local n6 = 4141209
local n7 = 4141208
local n8 = 4141214
local n9 = 4141210
local n10 = 4141211
local n11 = 4141212
local n12 = 4141213
tbl[1] = 4141201
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
tbl[14] = n12
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100762"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133003922"}, {"133003923"}, {"133001926"}}
    }
}

rewind_data = {
    ["4141201"] = {},
    ["4141202"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141201Sucrose",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4141203"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141201Sucrose",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141202Albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4141204"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141201Sucrose",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4141205"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141201Sucrose",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4141206"] = {},
    ["4141207"] = {},
    ["4141208"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141207Razor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141207Bennett",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4141209"] = {},
    ["4141210"] = {},
    ["4141211"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141211Razor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141211Bennett",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4141212"] = {},
    ["4141213"] = {},
    ["4141214"] = {}
}

quest_data = {
    ["4141201"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141201Sucrose",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141201Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4141202"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141202Albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141202Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4141203"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141202Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4141204"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141202Albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141202Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 71700201,
                alias = "Gadget71700201",
                pos = "Q4141204Gadget",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4141205"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141201Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 71700201,
                alias = "Gadget71700201",
                pos = "Q4141205Gadget",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4141206"] = {
        npcs = {
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "Q4141206Barbara",
                scene_id = 1008,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141206Rosaria",
                scene_id = 1008,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141206Venti",
                scene_id = 1008,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4141207"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141207Razor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141207Bennett",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141207Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4141208"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141207Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4141209"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141207Razor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141207Bennett",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141207Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4141210"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141207Razor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141207Bennett",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141207Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4141211"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141207Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4141212"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141213Venti",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4141213"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q4141213Kaeya",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q4141213Diluc",
                scene_id = 1009,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141213Rosaria",
                scene_id = 1009,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141213Venti",
                scene_id = 1009,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4141214"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141207Razor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141207Bennett",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141207Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4141216"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q4141213Kaeya",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q4141213Diluc",
                scene_id = 1009,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q4141213Rosaria",
                scene_id = 1009,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141213Venti",
                scene_id = 1009,
                room_id = 1,
                data_index = 4
            }
        }
    }
}

main_id = 11122
local tbl = {}
local n = 1112202
local v = 1112203
local n2 = 1112210
local n3 = 1112211
local n4 = 1112204
local n5 = 1112205
local n6 = 1112206
local n7 = 1112207
local n8 = 1112212
local n9 = 1112208
local n10 = 1112209
tbl[1] = 1112201
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
    ["1112201"] = {},
    ["1112202"] = {},
    ["1112203"] = {},
    ["1112204"] = {},
    ["1112205"] = {
        npcs = {
            {
                id = 10379,
                alias = "Npc10379",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10380,
                alias = "Npc10380",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10381,
                alias = "Npc10381",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1112207"] = {
        npcs = {
            {
                id = 10395,
                alias = "Npc10395",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_NPC_Search_Fin_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1112208"] = {
        npcs = {
            {
                id = 10424,
                alias = "Npc10424",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Rock_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1112209"] = {
        gadgets = {
            {
                id = 70710346,
                alias = "Gadget70710346",
                pos = "Q11122_Bag2_Miner_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1112210"] = {},
    ["1112211"] = {},
    ["1112212"] = {}
}

quest_data = {
    ["1112201"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11121_Zhongli_Look_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10408,
                alias = "Npc10408",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Look_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10424,
                alias = "Npc10424",
                script = "Actor/Npc/TempNPC",
                pos = "Q11121_Rock_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1112202"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Zhongli_Search_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10376,
                alias = "Npc10376",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Kun_Search_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10408,
                alias = "Npc10408",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Search_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1112203"] = {},
    ["1112204"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Zhongli_Search_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10376,
                alias = "Npc10376",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Kun_Search_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10379,
                alias = "Npc10379",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10380,
                alias = "Npc10380",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10381,
                alias = "Npc10381",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1112205"] = {},
    ["1112206"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Zhongli_Search_Fin_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10376,
                alias = "Npc10376",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Zhongli_Search_Fin_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10395,
                alias = "Npc10395",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_NPC_Search_Fin_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1112207"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Zhongli_Search_Fin_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10376,
                alias = "Npc10376",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Zhongli_Search_Fin_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1112208"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Zhongli_Miner_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10376,
                alias = "Npc10376",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Kun_Miner_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10382,
                alias = "Npc10382",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Miner_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70710346,
                alias = "Gadget70710346",
                pos = "Q11122_Bag1_Miner_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1112209"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Zhongli_Campsite_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10376,
                alias = "Npc10376",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Kun_Campsite_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10382,
                alias = "Npc10382",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Miner_Campsite_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10408,
                alias = "Npc10408",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Campsite_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1112210"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Zhongli_Search_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10376,
                alias = "Npc10376",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Kun_Search_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10379,
                alias = "Npc10379",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10380,
                alias = "Npc10380",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10381,
                alias = "Npc10381",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1112211"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Zhongli_Search_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10376,
                alias = "Npc10376",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Kun_Search_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10379,
                alias = "Npc10379",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10380,
                alias = "Npc10380",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10381,
                alias = "Npc10381",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Villager3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1112212"] = {
        npcs = {
            {
                id = 10382,
                alias = "Npc10382",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Miner_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10424,
                alias = "Npc10424",
                script = "Actor/Npc/TempNPC",
                pos = "Q11122_Rock_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

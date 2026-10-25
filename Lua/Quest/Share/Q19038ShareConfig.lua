main_id = 19038
local tbl = {}
local n = 1903802
local v = 1903803
local n2 = 1903804
local n3 = 1903805
local n4 = 1903807
local n5 = 1903806
local n6 = 1903812
local n7 = 1903813
local n8 = 1903808
local n9 = 1903809
local n10 = 1903811
local n11 = 1903810
tbl[1] = 1903801
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
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101671"}}}}

rewind_data = {
    ["1903801"] = {},
    ["1903806"] = {},
    ["1903807"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903808"] = {},
    ["1903809"] = {
        npcs = {
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903806_C1903802_N12319",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903806_C1903802_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1903811"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903812"] = {}
}

quest_data = {
    ["1903801"] = {
        npcs = {
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_T1903801_N12319",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_T1903801_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1903802"] = {
        npcs = {
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_T1903801_N12319",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_T1903801_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1903803"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12413,
                alias = "Npc12413",
                script = "Actor/Npc/YunjinCoopSneakAI2",
                pos = "Q1903801_T1903801_N12319",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12412,
                alias = "Npc12412",
                script = "Actor/Npc/YunjinCoopSneakAI1",
                pos = "Q1903801_T1903801_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_T1903801_N12319",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_T1903801_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1903804"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1903805"] = {
        npcs = {
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_T1903801_N12319",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_T1903801_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1903806"] = {
        npcs = {
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903806_C1903802_N12319",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903806_C1903802_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1903807"] = {
        npcs = {
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12318,
                alias = "Npc12318",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903808"] = {
        npcs = {
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903806_C1903802_N12319",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903806_C1903802_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1903809"] = {
        npcs = {
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903810"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1903811"] = {
        npcs = {
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12318,
                alias = "Npc12318",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903812"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12318,
                alias = "Npc12318",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903801_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1903813"] = {}
}

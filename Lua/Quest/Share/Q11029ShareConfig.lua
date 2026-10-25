main_id = 11029
local tbl = {}
local n = 1102901
local v = 1102902
local n2 = 1102912
local n3 = 1102903
local n4 = 1102909
local n5 = 1102910
local n6 = 1102911
local n7 = 1102904
local n8 = 1102914
local n9 = 1102905
local n10 = 1102913
local n11 = 1102906
local n12 = 1102907
tbl[1] = 1102908
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
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_SET_IS_GAME_TIME_LOCKED = {{"0"}}}}

rewind_data = {
    ["1102901"] = {},
    ["1102902"] = {
        npcs = {
            {
                id = 13136,
                alias = "Npc13136",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102902_T1102902_N13136",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102901_Q1102902_Q1102912_T1102912_N10204",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1102903"] = {},
    ["1102904"] = {
        npcs = {
            {
                id = 13137,
                alias = "Npc13137",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102904_T1102904_N13137",
                scene_id = 20182,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1102905"] = {},
    ["1102907"] = {
        npcs = {
            {
                id = 13137,
                alias = "Npc13137",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102907_T1102907_N13137",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1102908"] = {},
    ["1102909"] = {},
    ["1102910"] = {},
    ["1102911"] = {},
    ["1102912"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102901_Q1102902_Q1102912_T1102912_N10204",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1102901"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102908_T1102908_N1068",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13136,
                alias = "Npc13136",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102901_N13136",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102901_Q1102902_Q1102912_T1102912_N10204",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102908_T1102908_N1068",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1102902"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102902_T1102902_N1068",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102902_T1102902_N1068",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1102903"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102903_T1102903_N1068",
                scene_id = 20182,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13136,
                alias = "Npc13136",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102903_T1102903_N13136",
                scene_id = 20182,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13137,
                alias = "Npc13137",
                script = "Actor/Npc/TempNPC",
                pos = "[20182_18:192.110,43.282,756.062]",
                scene_id = 20182,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102903_T1102903_N1068",
                scene_id = 20182,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1102904"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102904_T1102904_N1068",
                scene_id = 20182,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13136,
                alias = "Npc13136",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102904_T1102904_N13136",
                scene_id = 20182,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102904_T1102904_N1068",
                scene_id = 20182,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1082, pos = "T1102905_N10000005"}}
    },
    ["1102905"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102905_T1102905_N1068",
                scene_id = 1082,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13135,
                alias = "Npc13135",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102905_T1102905_N13135",
                scene_id = 1082,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13137,
                alias = "Npc13137",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102905_T1102905_N13137",
                scene_id = 1082,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102905_T1102905_N1021",
                scene_id = 1082,
                room_id = 1,
                data_index = 4
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102905_T1102905_N10233",
                scene_id = 1082,
                room_id = 1,
                data_index = 5
            },
            {
                id = 13260,
                alias = "Npc13260",
                script = "Actor/Npc/TempNPC",
                pos = "[1082_19:5.698,0.584,38.787]",
                scene_id = 1082,
                room_id = 1,
                data_index = 6
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102905_T1102905_N1068",
                scene_id = 1082,
                room_id = 1,
                data_index = 7
            },
            {
                id = 13136,
                alias = "Npc13136",
                script = "Actor/Npc/TempNPC",
                pos = "[1082_19:5.698,0.584,38.787]",
                scene_id = 1082,
                room_id = 1,
                data_index = 8
            }
        }
    },
    ["1102906"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102905_T1102905_N1068",
                scene_id = 1082,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13137,
                alias = "Npc13137",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102906_Q1102913_N13137",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13175,
                alias = "Npc13175",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310701965:-430.310,241.347,423.774]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102905_T1102905_N1068",
                scene_id = 1082,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["1102907"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102907_T1102907_N1068",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13135,
                alias = "Npc13135",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102907_T1102907_N13135",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102907_T1102907_N10233",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102907_T1102907_N1068",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1102908"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102908_T1102908_N1068",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13136,
                alias = "Npc13136",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102908_T1102908_N13136",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102908_T1102911_N10233",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102908_T1102908_N1068",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1102909"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102903_T1102903_N1068",
                scene_id = 20182,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13136,
                alias = "Npc13136",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102903_T1102903_N13136",
                scene_id = 20182,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13137,
                alias = "Npc13137",
                script = "Actor/Npc/TempNPC",
                pos = "[20182_18:192.110,43.282,756.062]",
                scene_id = 20182,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102903_T1102903_N1068",
                scene_id = 20182,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1102910"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102910_T1102910_N1068",
                scene_id = 20182,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13136,
                alias = "Npc13136",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102910_T1102910_N13136",
                scene_id = 20182,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13137,
                alias = "Npc13137",
                script = "Actor/Npc/TempNPC",
                pos = "[20182_18:192.110,43.282,756.062]",
                scene_id = 20182,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102910_T1102910_N1068",
                scene_id = 20182,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1102911"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102910_T1102910_N1068",
                scene_id = 20182,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13136,
                alias = "Npc13136",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102910_T1102910_N13136",
                scene_id = 20182,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13137,
                alias = "Npc13137",
                script = "Actor/Npc/TempNPC",
                pos = "[20182_18:192.110,43.282,756.062]",
                scene_id = 20182,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102910_T1102910_N1068",
                scene_id = 20182,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1102912"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102902_T1102902_N1068",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102902_T1102902_N1068",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1102913"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102905_T1102905_N1068",
                scene_id = 1082,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13137,
                alias = "Npc13137",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102906_Q1102913_N13137",
                scene_id = 3,
                room_id = 1,
                data_index = 2
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102906_Q1102913_T1102907_T1102913_N10233",
                scene_id = 1082,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13260,
                alias = "Npc13260",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102906_Q1102913_N13260",
                scene_id = 1082,
                room_id = 1,
                data_index = 4
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102905_T1102905_N1068",
                scene_id = 1082,
                room_id = 1,
                data_index = 5
            },
            {
                id = 13136,
                alias = "Npc13136",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102906_Q1102913_N13260",
                scene_id = 1082,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["1102914"] = {}
}

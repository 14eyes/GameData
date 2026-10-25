main_id = 71037
local tbl = {}
local n = 7103702
local v = 7103703
local n2 = 7103704
local n3 = 7103723
local n4 = 7103724
local n5 = 7103705
local n6 = 7103706
local n7 = 7103707
local n8 = 7103708
local n9 = 7103721
local n10 = 7103709
local n11 = 7103725
local n12 = 7103710
local n13 = 7103711
local n14 = 7103712
local n15 = 7103713
local n16 = 7103714
local n17 = 7103719
local n18 = 7103720
local n19 = 7103722
local n20 = 7103715
local n21 = 7103716
tbl[1] = 7103701
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
tbl[15] = n13
tbl[16] = n14
tbl[17] = n15
tbl[18] = n16
tbl[19] = n17
tbl[20] = n18
tbl[21] = n19
tbl[22] = n20
tbl[23] = n21
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7103701"] = {},
    ["7103702"] = {},
    ["7103703"] = {},
    ["7103704"] = {},
    ["7103705"] = {},
    ["7103709"] = {},
    ["7103710"] = {},
    ["7103711"] = {},
    ["7103712"] = {},
    ["7103713"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103713_ZhiTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103714"] = {},
    ["7103715"] = {},
    ["7103716"] = {},
    ["7103721"] = {
        npcs = {
            {
                id = 20580,
                alias = "Npc20580",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103722"] = {},
    ["7103725"] = {}
}

quest_data = {
    ["7103701"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103701_ZhiTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20580,
                alias = "Npc20580",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103701_WuTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103701_ZhiTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103701_WuTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7103702"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103701_ZhiTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20580,
                alias = "Npc20580",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103701_WuTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103701_ZhiTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103701_WuTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 2, scene_id = 6, pos = "Q7103701_PlayerTalk"}}
    },
    ["7103703"] = {},
    ["7103704"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103704_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20580,
                alias = "Npc20580",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103704_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 3, scene_id = 6, pos = "Q7103704_TransPlayer"}}
    },
    ["7103705"] = {
        npcs = {
            {
                id = 20580,
                alias = "Npc20580",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103706"] = {
        npcs = {
            {
                id = 20580,
                alias = "Npc20580",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103707"] = {
        npcs = {
            {
                id = 20580,
                alias = "Npc20580",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103708"] = {
        npcs = {
            {
                id = 20580,
                alias = "Npc20580",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103709"] = {
        npcs = {
            {
                id = 20580,
                alias = "Npc20580",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103709_WuTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103709_WuTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103710"] = {},
    ["7103711"] = {
        npcs = {
            {
                id = 20580,
                alias = "Npc20580",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103711_WuTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103711_WuTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 4, scene_id = 6, pos = "Q7103711"}}
    },
    ["7103712"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103713_ZhiTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103713_ZhiTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103713"] = {
        npcs = {
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103713_ZhiTalk",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103714"] = {},
    ["7103715"] = {transmit_points = {{point_id = 2, scene_id = 6, pos = "Q7103715"}}},
    ["7103716"] = {},
    ["7103719"] = {},
    ["7103720"] = {},
    ["7103721"] = {
        npcs = {
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103704_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103722"] = {},
    ["7103723"] = {},
    ["7103724"] = {},
    ["7103725"] = {}
}

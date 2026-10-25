main_id = 73688
local tbl = {}
local n = 7368802
local v = 7368803
local n2 = 7368804
local n3 = 7368808
local n4 = 7368807
local n5 = 7368805
local n6 = 7368809
local n7 = 7368806
tbl[1] = 7368801
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

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10008"}, {"10010"}, {"10009"}},
        QUEST_EXEC_UNLOCK_AVATAR_TEAM = {{}}
    }
}

rewind_data = {
    ["7368801"] = {},
    ["7368802"] = {},
    ["7368803"] = {},
    ["7368804"] = {
        npcs = {
            {
                id = 3099,
                alias = "Npc3099",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7368803Hongda",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7368805"] = {},
    ["7368806"] = {},
    ["7368807"] = {},
    ["7368808"] = {
        npcs = {
            {
                id = 13073,
                alias = "Npc13073",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228111_N20563",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13084,
                alias = "Npc13084",
                script = "Actor/Npc/TempNPC",
                pos = "Q2012Tuoma02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12112,
                alias = "Npc12112",
                script = "Actor/Npc/TempNPC",
                pos = "Q73688StartPaimon",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12113,
                alias = "Npc12113",
                script = "Actor/Npc/TempNPC",
                pos = "Q73688StartQianli",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12116,
                alias = "Npc12116",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005505_N3029",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13185,
                alias = "Npc13185",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005619_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["7368809"] = {}
}

quest_data = {
    ["7368801"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904905_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13084,
                alias = "Npc13084",
                script = "Actor/Npc/TempNPC",
                pos = "Q73688StartHost",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13083,
                alias = "Npc13083",
                script = "Actor/Npc/TempNPC",
                pos = "Q2012Tuoma02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3086,
                alias = "Npc3086",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73688StartQianli",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7368802"] = {},
    ["7368803"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1912107tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3099,
                alias = "Npc3099",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7368803Hongda",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7368804"] = {
        npcs = {
            {
                id = 3099,
                alias = "Npc3099",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7368803Hongda",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13073,
                alias = "Npc13073",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228111_N20563",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13084,
                alias = "Npc13084",
                script = "Actor/Npc/TempNPC",
                pos = "Q2012Tuoma02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005505_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12112,
                alias = "Npc12112",
                script = "Actor/Npc/TempNPC",
                pos = "Q73688StartPaimon",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12113,
                alias = "Npc12113",
                script = "Actor/Npc/TempNPC",
                pos = "Q73688StartQianli",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12116,
                alias = "Npc12116",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005505_N3029",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 13185,
                alias = "Npc13185",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005619_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005505_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["7368805"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2012Check02"}}},
    ["7368806"] = {
        npcs = {
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "Q73688StartAyaka",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3086,
                alias = "Npc3086",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73688StartQianli",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q73688StartBossPos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q73688StartAyaka",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7368807"] = {
        npcs = {
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368606StagePlayer",
                scene_id = 47307,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368606StagePlayer",
                scene_id = 47307,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7368808"] = {transmit_points = {{point_id = 1, scene_id = 47307, pos = "Q7368606StagePlayer"}}},
    ["7368809"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2012Check02"}}}
}

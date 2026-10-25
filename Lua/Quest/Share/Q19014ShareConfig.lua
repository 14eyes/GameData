main_id = 19014
local tbl = {}
local n = 1901408
local v = 1901409
local n2 = 1901402
local n3 = 1901403
local n4 = 1901404
local n5 = 1901405
local n6 = 1901406
local n7 = 1901410
local n8 = 1901407
tbl[1] = 1901401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220690"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133220651"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl6 = {}
local str3 = ""
tbl6[1] = "133220690"
tbl6[2] = str3
local tbl7 = {}
local str4 = ""
tbl7[1] = "133220651"
tbl7[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[2] = tbl7
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl5.SERVER = server2
cancel_action = tbl5

rewind_data = {
    ["1901401"] = {},
    ["1901402"] = {},
    ["1901404"] = {
        npcs = {
            {
                id = 12268,
                alias = "Npc12268",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox1_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12269,
                alias = "Npc12269",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox2_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12270,
                alias = "Npc12270",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox3_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901405"] = {},
    ["1901407"] = {},
    ["1901409"] = {}
}

quest_data = {
    ["1901401"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901402"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12268,
                alias = "Npc12268",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox1_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12269,
                alias = "Npc12269",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox2_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12270,
                alias = "Npc12270",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox3_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1901403"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12268,
                alias = "Npc12268",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox1_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12269,
                alias = "Npc12269",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox2_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12270,
                alias = "Npc12270",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox3_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1901404"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901405"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Final1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12268,
                alias = "Npc12268",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox1_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12269,
                alias = "Npc12269",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox2_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12270,
                alias = "Npc12270",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_Fox3_Sleep2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 3105,
                alias = "Npc3105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3108,
                alias = "Npc3108",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 3110,
                alias = "Npc3110",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["1901406"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12242,
                alias = "Npc12242",
                script = "Actor/Npc/SayuCoopSneakAI_Walk",
                pos = "Q19014_Solider_01_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12243,
                alias = "Npc12243",
                script = "Actor/Npc/SayuCoopSneakAI_Walk",
                pos = "Q19014_Solider_02_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12244,
                alias = "Npc12244",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_03_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12245,
                alias = "Npc12245",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_04_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12246,
                alias = "Npc12246",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_05_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12247,
                alias = "Npc12247",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_10_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 12271,
                alias = "Npc12271",
                script = "Actor/Npc/SayuCoopSneakAI_WitchStand",
                pos = "Q19014_Solider_06_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 12272,
                alias = "Npc12272",
                script = "Actor/Npc/SayuCoopSneakAI_WitchStand",
                pos = "Q19014_Solider_07_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 12273,
                alias = "Npc12273",
                script = "Actor/Npc/SayuCoopSneakAI_WitchStand",
                pos = "Q19014_Solider_08_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12274,
                alias = "Npc12274",
                script = "Actor/Npc/SayuCoopSneakAI_WitchStand",
                pos = "Q19014_Solider_09_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 3105,
                alias = "Npc3105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 3108,
                alias = "Npc3108",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            },
            {
                id = 12248,
                alias = "Npc12248",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_08_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 17
            },
            {
                id = 12249,
                alias = "Npc12249",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_09_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 18
            },
            {
                id = 3110,
                alias = "Npc3110",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 19
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 20
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19014_SneakFail_Pos"}}
    },
    ["1901407"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Final2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu4_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu4_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1901408"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901409"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901410"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12242,
                alias = "Npc12242",
                script = "Actor/Npc/SayuCoopSneakAI_Walk",
                pos = "Q19014_Solider_01_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12243,
                alias = "Npc12243",
                script = "Actor/Npc/SayuCoopSneakAI_Walk",
                pos = "Q19014_Solider_02_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12244,
                alias = "Npc12244",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_03_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12245,
                alias = "Npc12245",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_04_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12246,
                alias = "Npc12246",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_05_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12247,
                alias = "Npc12247",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_10_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 12271,
                alias = "Npc12271",
                script = "Actor/Npc/SayuCoopSneakAI_WitchStand",
                pos = "Q19014_Solider_06_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 12272,
                alias = "Npc12272",
                script = "Actor/Npc/SayuCoopSneakAI_WitchStand",
                pos = "Q19014_Solider_07_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 12273,
                alias = "Npc12273",
                script = "Actor/Npc/SayuCoopSneakAI_WitchStand",
                pos = "Q19014_Solider_08_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12274,
                alias = "Npc12274",
                script = "Actor/Npc/SayuCoopSneakAI_WitchStand",
                pos = "Q19014_Solider_09_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 3105,
                alias = "Npc3105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 3108,
                alias = "Npc3108",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            },
            {
                id = 12248,
                alias = "Npc12248",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_08_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 17
            },
            {
                id = 12249,
                alias = "Npc12249",
                script = "Actor/Npc/SayuCoopSneakAI_Stand",
                pos = "Q19014_Solider_09_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 18
            },
            {
                id = 3110,
                alias = "Npc3110",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 19
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19014_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 20
            }
        }
    }
}

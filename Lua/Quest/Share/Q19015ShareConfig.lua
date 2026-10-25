main_id = 19015
local tbl = {}
local n = 1901502
local v = 1901511
local n2 = 1901503
local n3 = 1901508
local n4 = 1901509
local n5 = 1901510
local n6 = 1901504
local n7 = 1901505
local n8 = 1901506
local n9 = 1901507
tbl[1] = 1901501
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
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"502"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220674"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133220647"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl5 = {CLIENT = {}}
local server2 = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"502"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl6 = {}
local str3 = ""
tbl6[1] = "133220674"
tbl6[2] = str3
local tbl7 = {}
local str4 = ""
tbl7[1] = "133220647"
tbl7[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[2] = tbl7
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl5.SERVER = server2
cancel_action = tbl5
rewind_data = {["1901501"] = {}, ["1901504"] = {}, ["1901506"] = {}, ["1901507"] = {}, ["1901510"] = {}}

quest_data = {
    ["1901501"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19015_Player1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1901502"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19015_Player1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19010_Player_Pos"}}
    },
    ["1901503"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19015_Wunv2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901504"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19015_Wunv3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1901505"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19015_Wunv3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901506"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19015_Wunv3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1901507"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu4_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu4_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19015_Wunv3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu4_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1901508"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19015_Wunv2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901509"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19015_Wunv3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901510"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19015_Wunv3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1901511"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19015_Player1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19015_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19010_Player_Pos"}}
    }
}

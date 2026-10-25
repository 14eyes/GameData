main_id = 40104
local tbl = {}
local n = 4010401
local v = 4010402
local n2 = 4010404
local n3 = 4010403
local n4 = 4010410
local n5 = 4010408
local n6 = 4010409
local n7 = 4010405
local n8 = 4010406
tbl[1] = 4010407
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
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133308918"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120327"}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "201072006,1"
tbl4[1] = "1072"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4010401"] = {},
    ["4010402"] = {},
    ["4010403"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010404_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1067",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13228,
                alias = "Npc13228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201436:-341.247,324.602,2867.025,0.000,36.901,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13229,
                alias = "Npc13229",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201437:-341.564,324.602,2867.763,0.000,88.834,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4010404"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1067",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4010405"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1064",
                scene_id = 1072,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1050",
                scene_id = 1072,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010404_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1067",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1051",
                scene_id = 1072,
                room_id = 1,
                data_index = 7
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1058",
                scene_id = 1072,
                room_id = 1,
                data_index = 8
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 13228,
                alias = "Npc13228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201436:-341.247,324.602,2867.025,0.000,36.901,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 13229,
                alias = "Npc13229",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201437:-341.564,324.602,2867.763,0.000,88.834,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            }
        }
    },
    ["4010406"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1064",
                scene_id = 1072,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1050",
                scene_id = 1072,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010404_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010405_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1067",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1051",
                scene_id = 1072,
                room_id = 1,
                data_index = 8
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1058",
                scene_id = 1072,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 13228,
                alias = "Npc13228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201436:-341.247,324.602,2867.025,0.000,36.901,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 13229,
                alias = "Npc13229",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201437:-341.564,324.602,2867.763,0.000,88.834,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["4010407"] = {},
    ["4010408"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1064",
                scene_id = 1072,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1050",
                scene_id = 1072,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010404_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1067",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1051",
                scene_id = 1072,
                room_id = 1,
                data_index = 7
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1058",
                scene_id = 1072,
                room_id = 1,
                data_index = 8
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 13228,
                alias = "Npc13228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201436:-341.247,324.602,2867.025,0.000,36.901,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 13229,
                alias = "Npc13229",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201437:-341.564,324.602,2867.763,0.000,88.834,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            }
        }
    }
}

quest_data = {
    ["4010401"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010401_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4010402"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201426:-382.440,246.707,2662.270,0.000,203.729,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201344:-388.762,243.562,2652.083,0.000,31.676,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010405_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1067",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010014_N1064",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010402_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 4048,
                alias = "Npc4048",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 13228,
                alias = "Npc13228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201436:-341.247,324.602,2867.025,0.000,36.901,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 13229,
                alias = "Npc13229",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201437:-341.564,324.602,2867.763,0.000,88.834,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 4023,
                alias = "Npc4023",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4010403_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 4057,
                alias = "Npc4057",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 4058,
                alias = "Npc4058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            }
        }
    },
    ["4010403"] = {
        npcs = {
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1064",
                scene_id = 1072,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1050",
                scene_id = 1072,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010405_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1051",
                scene_id = 1072,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1058",
                scene_id = 1072,
                room_id = 1,
                data_index = 5
            },
            {
                id = 4048,
                alias = "Npc4048",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 4023,
                alias = "Npc4023",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4010403_N1051",
                scene_id = 1072,
                room_id = 1,
                data_index = 7
            },
            {
                id = 4057,
                alias = "Npc4057",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 4058,
                alias = "Npc4058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4010404"] = {
        npcs = {
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201426:-382.440,246.707,2662.270,0.000,203.729,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010404_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010405_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010403_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010014_N1064",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 4048,
                alias = "Npc4048",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 13228,
                alias = "Npc13228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201436:-341.247,324.602,2867.025,0.000,36.901,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 13229,
                alias = "Npc13229",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201437:-341.564,324.602,2867.763,0.000,88.834,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 4023,
                alias = "Npc4023",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4010403_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 4057,
                alias = "Npc4057",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 4058,
                alias = "Npc4058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["4010405"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010405_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4048,
                alias = "Npc4048",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4023,
                alias = "Npc4023",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4010403_N1051",
                scene_id = 1072,
                room_id = 1,
                data_index = 3
            },
            {
                id = 4057,
                alias = "Npc4057",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 4058,
                alias = "Npc4058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4010406"] = {
        npcs = {
            {
                id = 4048,
                alias = "Npc4048",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4023,
                alias = "Npc4023",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4010403_N1051",
                scene_id = 1072,
                room_id = 1,
                data_index = 2
            },
            {
                id = 4057,
                alias = "Npc4057",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4058,
                alias = "Npc4058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4010407"] = {
        npcs = {
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201426:-382.440,246.707,2662.270,0.000,203.729,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010014_N1064",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13161,
                alias = "Npc13161",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010003_N13151",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13226,
                alias = "Npc13226",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201368:-381.094,244.724,2655.360]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13199,
                alias = "Npc13199",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201346:-382.237,244.724,2655.218,0.000,5.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13200,
                alias = "Npc13200",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201422:-388.526,244.750,2659.697,0.000,49.478,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13201,
                alias = "Npc13201",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201423:-387.838,244.751,2659.268,0.000,14.615,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 13153,
                alias = "Npc13153",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201427:-381.511,246.707,2661.296,0.000,228.254,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4010408"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010405_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13161,
                alias = "Npc13161",
                script = "Actor/Npc/TempNPC",
                pos = "T1302005_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4048,
                alias = "Npc4048",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4023,
                alias = "Npc4023",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4010403_N1051",
                scene_id = 1072,
                room_id = 1,
                data_index = 4
            },
            {
                id = 4057,
                alias = "Npc4057",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 4058,
                alias = "Npc4058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201435:-393.483,234.383,2764.240,0.000,163.432,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4010409"] = {},
    ["4010410"] = {}
}

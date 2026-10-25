main_id = 40186
local tbl = {}
local n = 4018617
local v = 4018601
local n2 = 4018602
local n3 = 4018603
local n4 = 4018604
local n5 = 4018605
local n6 = 4018606
local n7 = 4018607
local n8 = 4018608
local n9 = 4018616
local n10 = 4018609
local n11 = 4018622
local n12 = 4018612
local n13 = 4018610
local n14 = 4018611
local n15 = 4018613
local n16 = 4018621
local n17 = 4018614
local n18 = 4018615
local n19 = 4018619
local n20 = 4018620
tbl[1] = 4018618
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10507"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133107288,133102299,133103672,133104847,133106410,133108265,133116146"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121163"}}
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4018601"] = {},
    ["4018602"] = {},
    ["4018603"] = {},
    ["4018604"] = {},
    ["4018605"] = {},
    ["4018606"] = {},
    ["4018607"] = {},
    ["4018609"] = {
        npcs = {
            {
                id = 15085,
                alias = "Npc15085",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10119:-529.255,210.022,327.500]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4018610"] = {},
    ["4018611"] = {},
    ["4018612"] = {},
    ["4018613"] = {},
    ["4018614"] = {},
    ["4018615"] = {},
    ["4018617"] = {},
    ["4018618"] = {},
    ["4018619"] = {},
    ["4018620"] = {},
    ["4018621"] = {},
    ["4018622"] = {}
}

quest_data = {
    ["4018601"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9878:-624.355,251.961,360.518,0.000,160.081,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10656:-622.537,251.961,361.052,0.000,212.390,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2611,
                alias = "Npc2611",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10838:-623.359,251.961,361.755,0.000,201.055,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10838:-623.359,251.961,361.755,0.000,201.055,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4018602"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10412:-625.613,251.961,363.130,0.000,84.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10348:-618.568,251.961,361.575,0.000,324.379,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9879:-437.520,239.242,435.835,0.000,254.474,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10413:-121.513,200.032,-721.335,0.000,259.853,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10415:-119.044,200.000,-713.737,0.000,261.250,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10414:-120.733,200.000,-713.966,0.000,81.537,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10417:-741.359,204.655,1495.734]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10418:1090.553,349.364,1530.359,0.000,319.771,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10420:2507.372,436.983,2156.673,0.000,317.603,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10421:908.021,207.883,279.214,0.000,178.225,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10551:-437.238,239.242,434.877,0.000,298.040,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9879:-437.520,239.242,435.835,0.000,254.474,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["4018603"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10412:-625.613,251.961,363.130,0.000,84.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10348:-618.568,251.961,361.575,0.000,324.379,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9879:-437.520,239.242,435.835,0.000,254.474,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10413:-121.513,200.032,-721.335,0.000,259.853,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10415:-119.044,200.000,-713.737,0.000,261.250,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10414:-120.733,200.000,-713.966,0.000,81.537,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10417:-741.359,204.655,1495.734]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10418:1090.553,349.364,1530.359,0.000,319.771,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10420:2507.372,436.983,2156.673,0.000,317.603,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10421:908.021,207.883,279.214,0.000,178.225,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10551:-437.238,239.242,434.877,0.000,298.040,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9880:-523.568,209.858,302.299]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9879:-437.520,239.242,435.835,0.000,254.474,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["4018604"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10412:-625.613,251.961,363.130,0.000,84.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10348:-618.568,251.961,361.575,0.000,324.379,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10413:-121.513,200.032,-721.335,0.000,259.853,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10415:-119.044,200.000,-713.737,0.000,261.250,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10414:-120.733,200.000,-713.966,0.000,81.537,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10417:-741.359,204.655,1495.734]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10418:1090.553,349.364,1530.359,0.000,319.771,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10420:2507.372,436.983,2156.673,0.000,317.603,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10421:908.021,207.883,279.214,0.000,178.225,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9880:-523.568,209.858,302.299]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 2610,
                alias = "Npc2610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9881:-665.729,219.315,233.310,0.000,7.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9881:-665.729,219.315,233.310,0.000,7.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9881:-665.729,219.315,233.310,0.000,7.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["4018605"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10412:-625.613,251.961,363.130,0.000,84.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10348:-618.568,251.961,361.575,0.000,324.379,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2611,
                alias = "Npc2611",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9886:-623.734,226.665,329.760]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10413:-121.513,200.032,-721.335,0.000,259.853,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10415:-119.044,200.000,-713.737,0.000,261.250,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10414:-120.733,200.000,-713.966,0.000,81.537,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10417:-741.359,204.655,1495.734]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10418:1090.553,349.364,1530.359,0.000,319.771,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10420:2507.372,436.983,2156.673,0.000,317.603,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10421:908.021,207.883,279.214,0.000,178.225,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 2610,
                alias = "Npc2610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9881:-665.729,219.315,233.310,0.000,7.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9881:-665.729,219.315,233.310,0.000,7.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9886:-623.734,226.665,329.760]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9881:-665.729,219.315,233.310,0.000,7.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_9888:-623.336,251.955,361.501]"}}
    },
    ["4018606"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9888:-623.336,251.955,361.501]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10413:-121.513,200.032,-721.335,0.000,259.853,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10415:-119.044,200.000,-713.737,0.000,261.250,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10414:-120.733,200.000,-713.966,0.000,81.537,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10417:-741.359,204.655,1495.734]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10418:1090.553,349.364,1530.359,0.000,319.771,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10420:2507.372,436.983,2156.673,0.000,317.603,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10421:908.021,207.883,279.214,0.000,178.225,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_9891:-623.116,226.634,330.833]"}}
    },
    ["4018607"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10413:-121.513,200.032,-721.335,0.000,259.853,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10415:-119.044,200.000,-713.737,0.000,261.250,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10414:-120.733,200.000,-713.966,0.000,81.537,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10417:-741.359,204.655,1495.734]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10418:1090.553,349.364,1530.359,0.000,319.771,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10420:2507.372,436.983,2156.673,0.000,317.603,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10421:908.021,207.883,279.214,0.000,178.225,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 15085,
                alias = "Npc15085",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9891:-623.116,226.634,330.833]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9893:-575.218,226.373,339.556]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9891:-623.116,226.634,330.833]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9891:-623.116,226.634,330.833]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 2074,
                alias = "Npc2074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9891:-623.116,226.634,330.833]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["4018608"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10413:-121.513,200.032,-721.335,0.000,259.853,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10415:-119.044,200.000,-713.737,0.000,261.250,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10414:-120.733,200.000,-713.966,0.000,81.537,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10417:-741.359,204.655,1495.734]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10418:1090.553,349.364,1530.359,0.000,319.771,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10420:2507.372,436.983,2156.673,0.000,317.603,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10421:908.021,207.883,279.214,0.000,178.225,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 15085,
                alias = "Npc15085",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9891:-623.116,226.634,330.833]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9893:-575.218,226.373,339.556]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9891:-623.116,226.634,330.833]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9891:-623.116,226.634,330.833]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 2074,
                alias = "Npc2074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9891:-623.116,226.634,330.833]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["4018609"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1231, pos = "[20248_3:350.500,29.700,735.600,0.000,352.500,0.000]"}}
    },
    ["4018610"] = {
        npcs = {
            {
                id = 15089,
                alias = "Npc15089",
                script = "Actor/Npc/TempNPC",
                pos = "[20248_3:350.500,29.700,735.600,0.000,352.500,0.000]",
                scene_id = 20248,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4018611"] = {},
    ["4018612"] = {},
    ["4018613"] = {
        npcs = {
            {
                id = 15086,
                alias = "Npc15086",
                script = "Actor/Npc/TempNPC",
                pos = "[20248_13:199.523,26.533,650.595]",
                scene_id = 20248,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20249, pos = "[20249_1:344.900,1.400,657.100,0.000,164.400,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1234, pos = "[20249_1:344.900,1.400,657.100,0.000,164.400,0.000]"}}
    },
    ["4018614"] = {},
    ["4018615"] = {
        npcs = {
            {
                id = 2612,
                alias = "Npc2612",
                script = "Actor/Npc/TempNPC",
                pos = "[20249_2:380.891,7.736,512.719]",
                scene_id = 20249,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[20249_2:380.891,7.736,512.719]",
                scene_id = 20249,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1082, pos = "[1082_21:5.490,0.011,37.043]"}}
    },
    ["4018616"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10413:-121.513,200.032,-721.335,0.000,259.853,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10415:-119.044,200.000,-713.737,0.000,261.250,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10414:-120.733,200.000,-713.966,0.000,81.537,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10417:-741.359,204.655,1495.734]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10418:1090.553,349.364,1530.359,0.000,319.771,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10420:2507.372,436.983,2156.673,0.000,317.603,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10421:908.021,207.883,279.214,0.000,178.225,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 15085,
                alias = "Npc15085",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9893:-575.218,226.373,339.556]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9893:-575.218,226.373,339.556]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9891:-623.116,226.634,330.833]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9891:-623.116,226.634,330.833]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 2074,
                alias = "Npc2074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9891:-623.116,226.634,330.833]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["4018617"] = {},
    ["4018618"] = {},
    ["4018619"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[1082_21:5.490,0.011,37.043]",
                scene_id = 1082,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4018620"] = {
        npcs = {
            {
                id = 2612,
                alias = "Npc2612",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10431:-430.853,239.242,418.540,0.000,13.295,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10431:-430.853,239.242,418.540,0.000,13.295,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4018621"] = {
        transmit_points = {{point_id = 1, scene_id = 20249, pos = "[20249_1:344.900,1.400,657.100,0.000,164.400,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1234, pos = "[20249_1:344.900,1.400,657.100,0.000,164.400,0.000]"}}
    },
    ["4018622"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1231, pos = "[20248_3:350.500,29.700,735.600,0.000,352.500,0.000]"}}
    }
}

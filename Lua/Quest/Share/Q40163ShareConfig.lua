main_id = 40163
local tbl = {}
local n = 4016302
local v = 4016320
local n2 = 4016322
local n3 = 4016321
local n4 = 4016303
local n5 = 4016304
local n6 = 4016329
local n7 = 4016305
local n8 = 4016306
local n9 = 4016327
local n10 = 4016330
local n11 = 4016307
local n12 = 4016308
local n13 = 4016309
local n14 = 4016325
local n15 = 4016326
local n16 = 4016310
local n17 = 4016311
local n18 = 4016312
local n19 = 4016313
local n20 = 4016314
local n21 = 4016315
local n22 = 4016316
local n23 = 4016328
local n24 = 4016323
local n25 = 4016324
local n26 = 4016331
local n27 = 4016317
local n28 = 4016318
local n29 = 4016319
tbl[1] = 4016301
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
tbl[24] = n22
tbl[25] = n23
tbl[26] = n24
tbl[27] = n25
tbl[28] = n26
tbl[29] = n27
tbl[30] = n28
tbl[31] = n29
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "610001143,610001108"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120893"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4016301"] = {},
    ["4016302"] = {},
    ["4016304"] = {},
    ["4016305"] = {},
    ["4016306"] = {},
    ["4016307"] = {},
    ["4016308"] = {},
    ["4016309"] = {},
    ["4016310"] = {},
    ["4016311"] = {},
    ["4016312"] = {},
    ["4016313"] = {},
    ["4016314"] = {},
    ["4016315"] = {},
    ["4016316"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001044:363.564,538.104,204.987,0.000,358.298,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4016318"] = {},
    ["4016319"] = {
        npcs = {
            {
                id = 30575,
                alias = "Npc30575",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001205:354.990,538.100,225.542,0.000,172.801,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30574,
                alias = "Npc30574",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001204:347.243,538.100,224.799,0.000,174.137,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016320"] = {},
    ["4016322"] = {},
    ["4016323"] = {},
    ["4016325"] = {},
    ["4016326"] = {},
    ["4016327"] = {},
    ["4016328"] = {},
    ["4016330"] = {}
}

quest_data = {
    ["4016301"] = {},
    ["4016302"] = {
        npcs = {
            {
                id = 30554,
                alias = "Npc30554",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002003:36.974,390.276,-338.921,0.000,282.731,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30572,
                alias = "Npc30572",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001021:34.185,390.237,-338.272,0.000,268.202,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001020:38.401,390.000,-350.329,0.000,80.444,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30569,
                alias = "Npc30569",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002008:38.097,390.327,-338.014,0.000,271.876,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002007:37.524,390.287,-339.850,0.000,290.301,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001020:38.401,390.000,-350.329,0.000,80.444,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4016303"] = {
        npcs = {
            {
                id = 30554,
                alias = "Npc30554",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002014:32.826,390.270,-351.772,0.000,264.874,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30572,
                alias = "Npc30572",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002013:32.739,390.283,-350.448,0.000,350.117,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001020:38.401,390.000,-350.329,0.000,80.444,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = -0.084, y = 2.628, z = -12.46},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 30569,
                alias = "Npc30569",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002008:38.097,390.327,-338.014,0.000,271.876,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002007:37.524,390.287,-339.850,0.000,290.301,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2661,
                alias = "Npc2661",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001022:38.464,390.000,-344.773,0.000,94.656,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 6,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = 0.996, y = 2.6, z = -13.4},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 30619,
                alias = "Npc30619",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001195:34.481,391.873,-337.085,0.000,172.609,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001020:38.401,390.000,-350.329,0.000,80.444,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 8,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = -0.084, y = 2.628, z = -12.46},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001022:38.464,390.000,-344.773,0.000,94.656,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 9,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = 0.996, y = 2.6, z = -13.4},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            }
        }
    },
    ["4016304"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001025:-5.236,390.076,58.289,0.000,7.198,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2661,
                alias = "Npc2661",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001022:38.464,390.000,-344.773,0.000,94.656,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001025:-5.236,390.076,58.289,0.000,7.198,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001022:38.464,390.000,-344.773,0.000,94.656,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016305"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001029:160.243,407.406,39.286]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001029:160.243,407.406,39.286]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016306"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001029:160.243,407.406,39.286]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001029:160.243,407.406,39.286]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016307"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001032:240.853,435.300,94.461,0.000,32.261,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001032:240.853,435.300,94.461,0.000,32.261,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016308"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001039:328.399,462.683,158.590,0.000,56.621,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001039:328.399,462.683,158.590,0.000,56.621,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016309"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001056:365.535,538.104,211.559,0.000,54.974,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001056:365.535,538.104,211.559,0.000,54.974,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016310"] = {},
    ["4016311"] = {
        npcs = {
            {
                id = 30575,
                alias = "Npc30575",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001040:368.227,538.104,198.417]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4016312"] = {},
    ["4016313"] = {},
    ["4016314"] = {},
    ["4016315"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001044:363.564,538.104,204.987,0.000,358.298,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4016316"] = {},
    ["4016317"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001185:359.557,538.100,211.681,0.000,229.470,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001054:367.270,538.104,212.601,0.000,226.281,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001108,
                    configId = 108001,
                    offsetPos = {x = 0.027, y = 3.028, z = -5.503},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001185:359.557,538.100,211.681,0.000,229.470,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 100, pos = "[100_910001134:400.584,540.942,244.119,0.000,223.417,0.000]"}
        }
    },
    ["4016318"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001057:357.355,538.104,218.108,0.000,36.501,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30575,
                alias = "Npc30575",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001205:354.990,538.100,225.542,0.000,172.801,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001054:367.270,538.104,212.601,0.000,226.281,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30574,
                alias = "Npc30574",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001204:347.243,538.100,224.799,0.000,174.137,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001057:357.355,538.104,218.108,0.000,36.501,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4016319"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001057:357.355,538.104,218.108,0.000,36.501,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001054:367.270,538.104,212.601,0.000,226.281,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001057:357.355,538.104,218.108,0.000,36.501,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4016320"] = {
        npcs = {
            {
                id = 30554,
                alias = "Npc30554",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002014:32.826,390.270,-351.772,0.000,264.874,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30572,
                alias = "Npc30572",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002013:32.739,390.283,-350.448,0.000,350.117,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001020:38.401,390.000,-350.329,0.000,80.444,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30569,
                alias = "Npc30569",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002017:32.506,390.297,-346.484,0.000,266.290,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002018:32.452,390.290,-345.642,0.000,260.654,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001020:38.401,390.000,-350.329,0.000,80.444,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4016321"] = {
        npcs = {
            {
                id = 30554,
                alias = "Npc30554",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002014:32.826,390.270,-351.772,0.000,264.874,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30572,
                alias = "Npc30572",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002013:32.739,390.283,-350.448,0.000,350.117,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001020:38.401,390.000,-350.329,0.000,80.444,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = -0.084, y = 2.628, z = -12.46},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 30569,
                alias = "Npc30569",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002008:38.097,390.327,-338.014,0.000,271.876,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002007:37.524,390.287,-339.850,0.000,290.301,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2661,
                alias = "Npc2661",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001022:38.464,390.000,-344.773,0.000,94.656,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 6,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = 0.996, y = 2.6, z = -13.4},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001020:38.401,390.000,-350.329,0.000,80.444,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 7,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = -0.084, y = 2.628, z = -12.46},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001022:38.464,390.000,-344.773,0.000,94.656,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 8,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = 0.996, y = 2.6, z = -13.4},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            }
        }
    },
    ["4016322"] = {
        npcs = {
            {
                id = 30554,
                alias = "Npc30554",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002014:32.826,390.270,-351.772,0.000,264.874,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30572,
                alias = "Npc30572",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002013:32.739,390.283,-350.448,0.000,350.117,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001020:38.401,390.000,-350.329,0.000,80.444,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = -0.057, y = 2.6, z = -13.416},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 30569,
                alias = "Npc30569",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002008:38.097,390.327,-338.014,0.000,271.876,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910002007:37.524,390.287,-339.850,0.000,290.301,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2661,
                alias = "Npc2661",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001022:38.464,390.000,-344.773,0.000,94.656,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 6,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = -0.043, y = 2.6, z = -11.277},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 30619,
                alias = "Npc30619",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001195:34.481,391.873,-337.085,0.000,172.609,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001020:38.401,390.000,-350.329,0.000,80.444,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 8,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = -0.057, y = 2.6, z = -13.416},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001022:38.464,390.000,-344.773,0.000,94.656,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 9,
                platformInfo = {
                    sceneId = 100,
                    groupId = 610001105,
                    configId = 105001,
                    offsetPos = {x = -0.043, y = 2.6, z = -11.277},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            }
        }
    },
    ["4016323"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001185:359.557,538.100,211.681,0.000,229.470,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30562,
                alias = "Npc30562",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001049:395.789,543.046,248.365,0.000,223.917,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001185:359.557,538.100,211.681,0.000,229.470,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 100, pos = "[100_910001148:321.984,682.417,545.692,0.000,145.449,0.000]"},
            {point_id = 2, scene_id = 100, pos = "[100_910001133:399.337,540.943,242.892,0.000,44.586,0.000]"}
        }
    },
    ["4016324"] = {},
    ["4016325"] = {},
    ["4016326"] = {
        npcs = {
            {
                id = 30575,
                alias = "Npc30575",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001040:368.227,538.104,198.417]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4016327"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001029:160.243,407.406,39.286]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001029:160.243,407.406,39.286]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016328"] = {
        npcs = {
            {
                id = 30575,
                alias = "Npc30575",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910001040:368.227,538.104,198.417]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4016329"] = {},
    ["4016330"] = {},
    ["4016331"] = {
        transmit_points = {
            {point_id = 1, scene_id = 100, pos = "[100_910001148:321.984,682.417,545.692,0.000,145.449,0.000]"}
        }
    }
}

main_id = 15008
local tbl = {}
local n = 1500802
local v = 1500803
local n2 = 1500804
local n3 = 1500805
local n4 = 1500806
local n5 = 1500807
local n6 = 1500808
local n7 = 1500809
tbl[1] = 1500801
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
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1500801"] = {},
    ["1500802"] = {},
    ["1500804"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200057:-2518.566,203.578,8446.526,0.000,188.205,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1500805"] = {},
    ["1500806"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200166:-2526.848,200.958,8479.735,0.000,306.410,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14227,
                alias = "Npc14227",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200059:-2519.070,203.141,8444.012,0.000,353.557,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14228,
                alias = "Npc14228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200058:-2517.554,203.911,8444.729,0.000,324.283,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1500808"] = {
        npcs = {
            {
                id = 14227,
                alias = "Npc14227",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200059:-2519.070,203.141,8444.012,0.000,353.557,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14228,
                alias = "Npc14228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200058:-2517.554,203.911,8444.729,0.000,324.283,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1500801"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200053:-2716.443,256.289,8806.695,358.648,352.983,0.159]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14227,
                alias = "Npc14227",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200122:-2714.884,256.353,8805.651,0.000,347.463,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14228,
                alias = "Npc14228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200123:-2713.855,256.355,8806.149,0.000,331.254,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1500802"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200054:-2529.876,202.328,8438.470,0.000,255.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 7, scene_id = 3, pos = "[3_350200434:-2526.325,202.173,8440.938,0.000,244.280,0.000]"}}
    },
    ["1500803"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200160:-2533.941,202.030,8437.878,0.000,242.528,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14227,
                alias = "Npc14227",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200124:-2521.455,204.493,8439.910]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14228,
                alias = "Npc14228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200125:-2519.969,204.512,8440.097,0.000,332.297,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350200126:-2518.282,203.527,8444.303]"}}
    },
    ["1500804"] = {
        npcs = {
            {
                id = 14227,
                alias = "Npc14227",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200124:-2521.455,204.493,8439.910]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14228,
                alias = "Npc14228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200125:-2519.969,204.512,8440.097,0.000,332.297,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 7, scene_id = 3, pos = "[3_350200434:-2526.325,202.173,8440.938,0.000,244.280,0.000]"}}
    },
    ["1500805"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200164:-2511.184,204.501,8448.048,0.000,344.125,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14227,
                alias = "Npc14227",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200059:-2519.070,203.141,8444.012,0.000,353.557,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14228,
                alias = "Npc14228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200058:-2517.554,203.911,8444.729,0.000,324.283,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 7, scene_id = 3, pos = "[3_350200434:-2526.325,202.173,8440.938,0.000,244.280,0.000]"}}
    },
    ["1500806"] = {
        transmit_points = {
            {point_id = 7, scene_id = 3, pos = "[3_350200434:-2526.325,202.173,8440.938,0.000,244.280,0.000]"},
            {point_id = 1, scene_id = 3, pos = "[3_350200265:-2534.531,202.151,8436.934,0.000,251.741,0.000]"}
        }
    },
    ["1500807"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200168:-2534.253,201.829,8438.578,0.000,245.799,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14227,
                alias = "Npc14227",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200059:-2519.070,203.141,8444.012,0.000,353.557,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14228,
                alias = "Npc14228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200058:-2517.554,203.911,8444.729,0.000,324.283,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350200434:-2526.325,202.173,8440.938,0.000,244.280,0.000]"}}
    },
    ["1500808"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200176:-2513.491,206.290,8311.527,0.000,121.786,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1500809"] = {}
}

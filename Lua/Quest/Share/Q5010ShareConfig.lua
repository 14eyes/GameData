main_id = 5010
local tbl = {}
local n = 501002
local v = 501006
local n2 = 501007
local n3 = 501009
local n4 = 501003
local n5 = 501008
local n6 = 501004
local n7 = 501005
tbl[1] = 501001
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
    ["501001"] = {},
    ["501002"] = {},
    ["501003"] = {
        npcs = {
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9079:-1927.897,53.749,9039.673,0.000,113.030,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["501004"] = {},
    ["501005"] = {},
    ["501006"] = {},
    ["501007"] = {},
    ["501009"] = {}
}

quest_data = {
    ["501001"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[1095_26:-5.110,2.863,4.095,0.000,236.829,0.000]",
                scene_id = 1095,
                room_id = 1,
                data_index = 1
            },
            {
                id = 14426,
                alias = "Npc14426",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200292:-2477.615,212.750,8261.786,0.000,289.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350200273:-2485.013,214.202,8263.735,0.000,85.884,0.000]"}}
    },
    ["501002"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[1095_33:-7.455,2.863,-0.112,0.000,197.229,0.000]",
                scene_id = 1095,
                room_id = 1,
                data_index = 1
            },
            {
                id = 14426,
                alias = "Npc14426",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200292:-2477.615,212.750,8261.786,0.000,289.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100124:-1960.646,64.974,9054.399,0.000,59.975,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1086,
                alias = "Npc1086",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100123:-1959.388,64.999,9054.179,0.000,55.713,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 14235,
                alias = "Npc14235",
                script = "Actor/Npc/TempNPC",
                pos = "[1095_52:-7.665,2.863,-1.218,0.000,10.787,0.000]",
                scene_id = 1095,
                room_id = 1,
                data_index = 5
            },
            {
                id = 14434,
                alias = "Npc14434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100091:-1958.941,64.974,9055.764,0.000,224.538,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14433,
                alias = "Npc14433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100090:-1959.098,64.999,9054.748,0.000,262.051,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["501003"] = {
        npcs = {
            {
                id = 14426,
                alias = "Npc14426",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200292:-2477.615,212.750,8261.786,0.000,289.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14434,
                alias = "Npc14434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100278:-1959.419,64.999,9053.395]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14433,
                alias = "Npc14433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100090:-1959.098,64.999,9054.748,0.000,262.051,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14439,
                alias = "Npc14439",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_22:37.706,9.278,9.412,0.000,277.754,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100092:-1863.440,66.980,9101.495,0.000,197.857,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9578:-1864.133,66.980,9101.447,0.000,154.073,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14807,
                alias = "Npc14807",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100265:-1931.099,53.749,9040.341,0.000,100.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 14808,
                alias = "Npc14808",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100266:-1930.827,53.749,9039.511,0.000,46.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_20:11.365,0.006,28.620,0.000,332.965,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_79:19.447,0.026,13.416,0.000,70.516,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 10
            },
            {
                id = 14383,
                alias = "Npc14383",
                script = "Actor/Npc/TempNPC",
                pos = "[20241_4:465.170,164.246,735.806,0.000,84.441,0.000]",
                scene_id = 20241,
                room_id = 0,
                data_index = 11
            }
        }
    },
    ["501004"] = {
        npcs = {
            {
                id = 14426,
                alias = "Npc14426",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200292:-2477.615,212.750,8261.786,0.000,289.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14434,
                alias = "Npc14434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100278:-1959.419,64.999,9053.395]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14433,
                alias = "Npc14433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100090:-1959.098,64.999,9054.748,0.000,262.051,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9079:-1927.897,53.749,9039.673,0.000,113.030,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100092:-1863.440,66.980,9101.495,0.000,197.857,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9578:-1864.133,66.980,9101.447,0.000,154.073,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14807,
                alias = "Npc14807",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100265:-1931.099,53.749,9040.341,0.000,100.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 14808,
                alias = "Npc14808",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100266:-1930.827,53.749,9039.511,0.000,46.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_20:11.365,0.006,28.620,0.000,332.965,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_79:19.447,0.026,13.416,0.000,70.516,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 10
            },
            {
                id = 14383,
                alias = "Npc14383",
                script = "Actor/Npc/TempNPC",
                pos = "[20241_4:465.170,164.246,735.806,0.000,84.441,0.000]",
                scene_id = 20241,
                room_id = 0,
                data_index = 11
            }
        },
        transmit_points = {{point_id = 6, scene_id = 1099, pos = "[1099_92:35.849,8.257,11.669,0.000,268.502,0.000]"}}
    },
    ["501005"] = {
        npcs = {
            {
                id = 14426,
                alias = "Npc14426",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200292:-2477.615,212.750,8261.786,0.000,289.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14434,
                alias = "Npc14434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100278:-1959.419,64.999,9053.395]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14433,
                alias = "Npc14433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100090:-1959.098,64.999,9054.748,0.000,262.051,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_21:10.660,0.006,29.696,0.000,144.899,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100092:-1863.440,66.980,9101.495,0.000,197.857,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9578:-1864.133,66.980,9101.447,0.000,154.073,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14807,
                alias = "Npc14807",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100265:-1931.099,53.749,9040.341,0.000,100.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 14808,
                alias = "Npc14808",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100266:-1930.827,53.749,9039.511,0.000,46.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_20:11.365,0.006,28.620,0.000,332.965,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_79:19.447,0.026,13.416,0.000,70.516,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 10
            },
            {
                id = 14383,
                alias = "Npc14383",
                script = "Actor/Npc/TempNPC",
                pos = "[20241_4:465.170,164.246,735.806,0.000,84.441,0.000]",
                scene_id = 20241,
                room_id = 0,
                data_index = 11
            }
        },
        transmit_points = {{point_id = 6, scene_id = 1099, pos = "[1099_27:10.773,0.006,28.664,0.000,30.000,0.000]"}}
    },
    ["501006"] = {
        npcs = {
            {
                id = 14426,
                alias = "Npc14426",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200292:-2477.615,212.750,8261.786,0.000,289.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14434,
                alias = "Npc14434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100091:-1958.941,64.974,9055.764,0.000,224.538,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14433,
                alias = "Npc14433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100090:-1959.098,64.999,9054.748,0.000,262.051,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100125:-1928.763,53.749,9041.452,0.000,43.403,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100092:-1863.440,66.980,9101.495,0.000,197.857,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 6047,
                alias = "Npc6047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100093:-1863.758,66.980,9100.258,0.000,356.850,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100099:-1864.133,66.980,9101.447,0.000,154.073,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 14807,
                alias = "Npc14807",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100265:-1931.099,53.749,9040.341,0.000,100.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 14808,
                alias = "Npc14808",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100266:-1930.827,53.749,9039.511,0.000,46.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_20:11.365,0.006,28.620,0.000,332.965,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 10
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_79:19.447,0.026,13.416,0.000,70.516,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 11
            },
            {
                id = 14383,
                alias = "Npc14383",
                script = "Actor/Npc/TempNPC",
                pos = "[20241_4:465.170,164.246,735.806,0.000,84.441,0.000]",
                scene_id = 20241,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["501007"] = {
        npcs = {
            {
                id = 14426,
                alias = "Npc14426",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200292:-2477.615,212.750,8261.786,0.000,289.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14434,
                alias = "Npc14434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100091:-1958.941,64.974,9055.764,0.000,224.538,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14433,
                alias = "Npc14433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100090:-1959.098,64.999,9054.748,0.000,262.051,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100125:-1928.763,53.749,9041.452,0.000,43.403,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100092:-1863.440,66.980,9101.495,0.000,197.857,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9578:-1864.133,66.980,9101.447,0.000,154.073,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14807,
                alias = "Npc14807",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100265:-1931.099,53.749,9040.341,0.000,100.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 14808,
                alias = "Npc14808",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100266:-1930.827,53.749,9039.511,0.000,46.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_20:11.365,0.006,28.620,0.000,332.965,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_79:19.447,0.026,13.416,0.000,70.516,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 10
            },
            {
                id = 14383,
                alias = "Npc14383",
                script = "Actor/Npc/TempNPC",
                pos = "[20241_4:465.170,164.246,735.806,0.000,84.441,0.000]",
                scene_id = 20241,
                room_id = 0,
                data_index = 11
            }
        }
    },
    ["501008"] = {
        npcs = {
            {
                id = 14426,
                alias = "Npc14426",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200292:-2477.615,212.750,8261.786,0.000,289.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14434,
                alias = "Npc14434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100278:-1959.419,64.999,9053.395]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14433,
                alias = "Npc14433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100090:-1959.098,64.999,9054.748,0.000,262.051,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9079:-1927.897,53.749,9039.673,0.000,113.030,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100092:-1863.440,66.980,9101.495,0.000,197.857,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9578:-1864.133,66.980,9101.447,0.000,154.073,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14807,
                alias = "Npc14807",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100265:-1931.099,53.749,9040.341,0.000,100.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 14808,
                alias = "Npc14808",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100266:-1930.827,53.749,9039.511,0.000,46.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_20:11.365,0.006,28.620,0.000,332.965,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_79:19.447,0.026,13.416,0.000,70.516,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 10
            },
            {
                id = 14383,
                alias = "Npc14383",
                script = "Actor/Npc/TempNPC",
                pos = "[20241_4:465.170,164.246,735.806,0.000,84.441,0.000]",
                scene_id = 20241,
                room_id = 0,
                data_index = 11
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1225, pos = "[20241_5:471.911,163.882,733.285,0.000,293.838,0.000]"}}
    },
    ["501009"] = {
        npcs = {
            {
                id = 14426,
                alias = "Npc14426",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200292:-2477.615,212.750,8261.786,0.000,289.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14434,
                alias = "Npc14434",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100091:-1958.941,64.974,9055.764,0.000,224.538,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14433,
                alias = "Npc14433",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100090:-1959.098,64.999,9054.748,0.000,262.051,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100125:-1928.763,53.749,9041.452,0.000,43.403,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100092:-1863.440,66.980,9101.495,0.000,197.857,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9578:-1864.133,66.980,9101.447,0.000,154.073,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14807,
                alias = "Npc14807",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100265:-1931.099,53.749,9040.341,0.000,100.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 14808,
                alias = "Npc14808",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100266:-1930.827,53.749,9039.511,0.000,46.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_78:20.998,-0.009,12.779,0.000,341.774,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_79:19.447,0.026,13.416,0.000,70.516,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 10
            },
            {
                id = 14383,
                alias = "Npc14383",
                script = "Actor/Npc/TempNPC",
                pos = "[20241_4:465.170,164.246,735.806,0.000,84.441,0.000]",
                scene_id = 20241,
                room_id = 0,
                data_index = 11
            }
        }
    }
}

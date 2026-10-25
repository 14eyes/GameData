main_id = 19080
local tbl = {}
local n = 1908020
local v = 1908002
local n2 = 1908003
local n3 = 1908004
local n4 = 1908013
local n5 = 1908012
local n6 = 1908011
local n7 = 1908014
local n8 = 1908015
local n9 = 1908005
local n10 = 1908017
local n11 = 1908018
local n12 = 1908006
local n13 = 1908016
local n14 = 1908007
local n15 = 1908021
local n16 = 1908019
local n17 = 1908008
local n18 = 1908009
tbl[1] = 1908001
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133304598,133304600"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1908001"] = {},
    ["1908002"] = {
        npcs = {
            {
                id = 2020,
                alias = "Npc2020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4201:-583.560,226.921,348.194,0.000,136.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908003"] = {},
    ["1908004"] = {},
    ["1908005"] = {
        npcs = {
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4401:-564.132,239.005,315.470,0.000,302.568,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4969:-565.059,239.005,317.356,0.000,169.680,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1908006"] = {},
    ["1908007"] = {},
    ["1908008"] = {},
    ["1908009"] = {},
    ["1908015"] = {},
    ["1908016"] = {},
    ["1908017"] = {
        npcs = {
            {
                id = 2010,
                alias = "Npc2010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4399:-569.569,239.303,322.171,0.000,170.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908018"] = {
        npcs = {
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4847:-583.966,226.838,315.279,0.000,266.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5202:-585.283,226.838,314.138,0.000,25.832,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5203:-586.159,226.838,315.172,0.000,87.170,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2010,
                alias = "Npc2010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4399:-569.569,239.303,322.171,0.000,170.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1908019"] = {},
    ["1908020"] = {},
    ["1908021"] = {
        npcs = {
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4738:-635.851,227.495,288.414,0.000,315.550,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13308,
                alias = "Npc13308",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4211:-628.091,228.332,296.347,0.000,265.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4677:-639.254,227.495,293.524,0.000,28.920,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4678:-636.167,227.495,297.708,0.000,263.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

quest_data = {
    ["1908001"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4200:-561.265,225.052,360.084,0.000,319.620,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2020,
                alias = "Npc2020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4201:-583.560,226.921,348.194,0.000,136.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2054,
                alias = "Npc2054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4202:-633.322,219.543,262.327,0.000,277.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4202:-633.322,219.543,262.327,0.000,277.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13304,
                alias = "Npc13304",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4191:-2049.100,205.878,2585.771,0.000,133.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13305,
                alias = "Npc13305",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4193:-2047.628,205.878,2584.616,0.000,304.882,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13456,
                alias = "Npc13456",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5118:-2044.741,204.451,2591.426]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4200:-561.265,225.052,360.084,0.000,319.620,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1908002"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4201:-583.560,226.921,348.194,0.000,136.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2054,
                alias = "Npc2054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4202:-633.322,219.543,262.327,0.000,277.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4202:-633.322,219.543,262.327,0.000,277.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4201:-583.560,226.921,348.194,0.000,136.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1908003"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4202:-633.322,219.543,262.327,0.000,277.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2054,
                alias = "Npc2054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4202:-633.322,219.543,262.327,0.000,277.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4202:-633.322,219.543,262.327,0.000,277.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4202:-633.322,219.543,262.327,0.000,277.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1908004"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4208:-566.700,239.019,316.899,0.000,314.560,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5392:-567.829,239.005,318.219,0.000,111.590,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4401:-564.132,239.005,315.470,0.000,302.568,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4969:-565.059,239.005,317.356,0.000,169.680,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2010,
                alias = "Npc2010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4399:-569.569,239.303,322.171,0.000,170.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4944:-569.765,239.005,316.878]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2062,
                alias = "Npc2062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4945:-564.095,239.005,317.675]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1626,
                alias = "Npc1626",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4946:-564.735,238.998,318.616]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4208:-566.700,239.019,316.899,0.000,314.560,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1908005"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4208:-566.700,239.019,316.899,0.000,314.560,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4374:-569.276,239.005,316.264,0.000,84.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2010,
                alias = "Npc2010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4399:-569.569,239.303,322.171,0.000,170.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4944:-569.765,239.005,316.878]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4208:-566.700,239.019,316.899,0.000,314.560,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1908006"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4499:-587.822,242.178,310.474,0.000,42.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4847:-583.966,226.838,315.279,0.000,266.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4950:-584.391,226.838,315.785,0.000,246.717,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4949:-585.935,226.822,314.910,0.000,64.617,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2010,
                alias = "Npc2010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4399:-569.569,239.303,322.171,0.000,170.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4944:-569.765,239.005,316.878]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4499:-587.822,242.178,310.474,0.000,42.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1908007"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4210:-630.584,228.332,296.417,0.000,94.985,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4738:-635.851,227.495,288.414,0.000,315.550,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13308,
                alias = "Npc13308",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4211:-628.091,228.332,296.347,0.000,265.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4677:-639.254,227.495,293.524,0.000,28.920,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4678:-636.167,227.495,297.708,0.000,263.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2102,
                alias = "Npc2102",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4403:-639.000,221.716,280.300,0.000,74.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2036,
                alias = "Npc2036",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4403:-639.000,221.716,280.300,0.000,74.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4210:-630.584,228.332,296.417,0.000,94.985,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1908008"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4212:-639.544,219.543,269.047,0.000,14.093,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4214:-640.654,219.543,270.425,0.000,16.788,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13308,
                alias = "Npc13308",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4213:-638.600,219.543,271.161,0.000,221.979,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4402:-565.314,239.005,317.230,0.000,184.155,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2102,
                alias = "Npc2102",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4737:-639.186,227.495,289.536]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2056,
                alias = "Npc2056",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4406:-639.843,219.543,272.204,0.000,141.510,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2036,
                alias = "Npc2036",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4403:-639.000,221.716,280.300,0.000,74.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4212:-639.544,219.543,269.047,0.000,14.093,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1908009"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4215:-685.116,205.960,47.522,0.000,68.028,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4216:-682.786,205.960,48.669,0.000,237.498,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4215:-685.116,205.960,47.522,0.000,68.028,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1908011"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4398:-573.687,239.005,315.693,0.000,322.310,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4374:-569.276,239.005,316.264,0.000,84.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4401:-564.132,239.005,315.470,0.000,302.568,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4969:-565.059,239.005,317.356,0.000,169.680,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2010,
                alias = "Npc2010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4399:-569.569,239.303,322.171,0.000,170.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4944:-569.765,239.005,316.878]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4398:-573.687,239.005,315.693,0.000,322.310,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1908012"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4398:-573.687,239.005,315.693,0.000,322.310,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4374:-569.276,239.005,316.264,0.000,84.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4401:-564.132,239.005,315.470,0.000,302.568,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4969:-565.059,239.005,317.356,0.000,169.680,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2010,
                alias = "Npc2010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4399:-569.569,239.303,322.171,0.000,170.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4944:-569.765,239.005,316.878]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4398:-573.687,239.005,315.693,0.000,322.310,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1908013"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4398:-573.687,239.005,315.693,0.000,322.310,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4374:-569.276,239.005,316.264,0.000,84.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4401:-564.132,239.005,315.470,0.000,302.568,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4969:-565.059,239.005,317.356,0.000,169.680,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2010,
                alias = "Npc2010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4399:-569.569,239.303,322.171,0.000,170.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4944:-569.765,239.005,316.878]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4398:-573.687,239.005,315.693,0.000,322.310,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1908014"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4398:-573.687,239.005,315.693,0.000,322.310,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4374:-569.276,239.005,316.264,0.000,84.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4401:-564.132,239.005,315.470,0.000,302.568,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4969:-565.059,239.005,317.356,0.000,169.680,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2010,
                alias = "Npc2010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4399:-569.569,239.303,322.171,0.000,170.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4944:-569.765,239.005,316.878]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4398:-573.687,239.005,315.693,0.000,322.310,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1908015"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4398:-573.687,239.005,315.693,0.000,322.310,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4374:-569.276,239.005,316.264,0.000,84.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4401:-564.132,239.005,315.470,0.000,302.568,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4969:-565.059,239.005,317.356,0.000,169.680,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4944:-569.765,239.005,316.878]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4398:-573.687,239.005,315.693,0.000,322.310,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1908016"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4404:-636.667,221.716,281.089,0.000,256.350,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4738:-635.851,227.495,288.414,0.000,315.550,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13308,
                alias = "Npc13308",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4211:-628.091,228.332,296.347,0.000,265.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4677:-639.254,227.495,293.524,0.000,28.920,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4678:-636.167,227.495,297.708,0.000,263.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2102,
                alias = "Npc2102",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4403:-639.000,221.716,280.300,0.000,74.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2036,
                alias = "Npc2036",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4403:-639.000,221.716,280.300,0.000,74.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4404:-636.667,221.716,281.089,0.000,256.350,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1908017"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5208:-598.417,225.464,303.299,0.000,6.560,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4847:-583.966,226.838,315.279,0.000,266.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5202:-585.283,226.838,314.138,0.000,25.832,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5203:-586.159,226.838,315.172,0.000,87.170,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4944:-569.765,239.005,316.878]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_5208:-598.417,225.464,303.299,0.000,6.560,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1908018"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4499:-587.822,242.178,310.474,0.000,42.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4944:-569.765,239.005,316.878]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4499:-587.822,242.178,310.474,0.000,42.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1908019"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4669:-637.671,227.495,288.709,0.000,198.331,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13308,
                alias = "Npc13308",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4670:-636.918,227.495,286.545,0.000,257.040,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13340,
                alias = "Npc13340",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4677:-639.254,227.495,293.524,0.000,28.920,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4678:-636.167,227.495,297.708,0.000,263.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2102,
                alias = "Npc2102",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4671:-638.990,227.495,286.300,0.000,26.244,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2036,
                alias = "Npc2036",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4403:-639.000,221.716,280.300,0.000,74.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4669:-637.671,227.495,288.709,0.000,198.331,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1908020"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4201:-583.560,226.921,348.194,0.000,136.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2020,
                alias = "Npc2020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4201:-583.560,226.921,348.194,0.000,136.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2054,
                alias = "Npc2054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4202:-633.322,219.543,262.327,0.000,277.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2041,
                alias = "Npc2041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4202:-633.322,219.543,262.327,0.000,277.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4201:-583.560,226.921,348.194,0.000,136.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1908021"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4210:-630.584,228.332,296.417,0.000,94.985,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2102,
                alias = "Npc2102",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4403:-639.000,221.716,280.300,0.000,74.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2036,
                alias = "Npc2036",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4403:-639.000,221.716,280.300,0.000,74.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4210:-630.584,228.332,296.417,0.000,94.985,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

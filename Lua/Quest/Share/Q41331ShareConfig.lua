main_id = 41331
local tbl = {}
local n = 4133101
local v = 4133102
local n2 = 4133103
local n3 = 4133105
local n4 = 4133104
local n5 = 4133106
local n6 = 4133107
local n7 = 4133115
local n8 = 4133121
local n9 = 4133109
local n10 = 4133110
local n11 = 4133111
local n12 = 4133112
local n13 = 4133113
local n14 = 4133114
local n15 = 4133117
local n16 = 4133118
local n17 = 4133119
local n18 = 4133120
local n19 = 4133116
local n20 = 4133122
local n21 = 4133123
local n22 = 4133124
local n23 = 4133125
local n24 = 4133108
tbl[1] = 4133126
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133102092"}, {"133102093"}}}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133102093"}, {"133102094"}}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133102092,2"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4133101"] = {},
    ["4133102"] = {},
    ["4133103"] = {
        npcs = {
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_ruoxin1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2300,
                alias = "Npc2300",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_kaishu1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4133104"] = {
        npcs = {
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_ruoxin1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2138,
                alias = "Npc2138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_xiaobai1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2300,
                alias = "Npc2300",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_kaishu1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4133106"] = {
        npcs = {
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_ruoxin1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2138,
                alias = "Npc2138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_xiaobai1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4133109"] = {
        npcs = {
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_ruoxin1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2138,
                alias = "Npc2138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_xiaobai1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2300,
                alias = "Npc2300",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_kaishu1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4133110"] = {
        npcs = {
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_ruoxin1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2138,
                alias = "Npc2138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_xiaobai1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2300,
                alias = "Npc2300",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_kaishu1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4133116"] = {
        npcs = {
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_ruoxin2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133118"] = {},
    ["4133119"] = {},
    ["4133120"] = {},
    ["4133126"] = {}
}

quest_data = {
    ["4133101"] = {},
    ["4133102"] = {
        npcs = {
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_ruoxin1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2138,
                alias = "Npc2138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_xiaobai1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2300,
                alias = "Npc2300",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_kaishu1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4133103"] = {
        npcs = {
            {
                id = 2138,
                alias = "Npc2138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_xiaobai1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133104"] = {},
    ["4133105"] = {},
    ["4133106"] = {
        npcs = {
            {
                id = 2300,
                alias = "Npc2300",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_kaishu1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133107"] = {},
    ["4133108"] = {
        npcs = {
            {
                id = 2307,
                alias = "Npc2307",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_yundan1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133109"] = {},
    ["4133110"] = {
        npcs = {
            {
                id = 2307,
                alias = "Npc2307",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_yundan1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2136,
                alias = "Npc2136",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_luoxiaomei1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1624,
                alias = "Npc1624",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_changjiuye",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2137,
                alias = "Npc2137",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_jiangcheng1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2304,
                alias = "Npc2304",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_dongdong",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2308,
                alias = "Npc2308",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_xiaoliu",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4133111"] = {},
    ["4133112"] = {
        npcs = {
            {
                id = 2136,
                alias = "Npc2136",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_luoxiaomei1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133113"] = {},
    ["4133114"] = {
        npcs = {
            {
                id = 2137,
                alias = "Npc2137",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_jiangcheng1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133115"] = {},
    ["4133116"] = {
        npcs = {
            {
                id = 2138,
                alias = "Npc2138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_xiaobai2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2300,
                alias = "Npc2300",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_kaishu2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2307,
                alias = "Npc2307",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_yundan2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2304,
                alias = "Npc2304",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_dongdong",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2308,
                alias = "Npc2308",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_xiaoliu",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4133117"] = {},
    ["4133118"] = {
        npcs = {
            {
                id = 2136,
                alias = "Npc2136",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_luoxiaomei2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1624,
                alias = "Npc1624",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_changjiuye",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2137,
                alias = "Npc2137",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_jiangcheng1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4133119"] = {
        npcs = {
            {
                id = 1624,
                alias = "Npc1624",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_changjiuye2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2137,
                alias = "Npc2137",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_jiangcheng1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2304,
                alias = "Npc2304",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_dongdong",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4133120"] = {
        npcs = {
            {
                id = 2137,
                alias = "Npc2137",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41331_jiangcheng2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133121"] = {},
    ["4133122"] = {},
    ["4133123"] = {},
    ["4133124"] = {},
    ["4133125"] = {},
    ["4133126"] = {}
}

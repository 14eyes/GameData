main_id = 40021
local tbl = {}
local n = 4002101
local v = 4002102
local n2 = 4002103
local n3 = 4002113
local n4 = 4002104
local n5 = 4002105
local n6 = 4002115
local n7 = 4002111
local n8 = 4002114
local n9 = 4002116
local n10 = 4002106
local n11 = 4002117
local n12 = 4002107
local n13 = 4002108
local n14 = 4002112
local n15 = 4002109
local n16 = 4002118
tbl[1] = 4002110
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["4002101"] = {},
    ["4002102"] = {},
    ["4002103"] = {},
    ["4002104"] = {},
    ["4002105"] = {},
    ["4002106"] = {},
    ["4002107"] = {},
    ["4002108"] = {},
    ["4002109"] = {},
    ["4002110"] = {},
    ["4002111"] = {},
    ["4002112"] = {},
    ["4002113"] = {
        npcs = {
            {
                id = 30067,
                alias = "Npc30067",
                script = "Actor/Npc/TempNPC",
                pos = "Q40020gate",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002114"] = {},
    ["4002115"] = {},
    ["4002116"] = {},
    ["4002117"] = {}
}

quest_data = {
    ["4002101"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002101xinyan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002102"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002102xinyan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002102jiutiaoshaluo",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002103"] = {
        npcs = {
            {
                id = 30067,
                alias = "Npc30067",
                script = "Actor/Npc/TempNPC",
                pos = "Q40020gate",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002104"] = {},
    ["4002105"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002105xinyan",
                scene_id = 47005,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002105gongzi",
                scene_id = 47005,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30067,
                alias = "Npc30067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002105shidajiang",
                scene_id = 47005,
                room_id = 0,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70710524,
                alias = "Gadget70710524data1",
                pos = "Q4002111target",
                scene_id = 47005,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710524,
                alias = "Gadget70710524data3",
                pos = "Q4002111target3",
                scene_id = 47005,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002106"] = {},
    ["4002107"] = {
        gadgets = {
            {
                id = 70710489,
                alias = "Gadget70710489Data2",
                pos = "Q4002107target2",
                scene_id = 47002,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710524,
                alias = "Gadget70710524data2",
                pos = "Q4002107target",
                scene_id = 47002,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002108"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002108xinyan",
                scene_id = 47002,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002108gongzi",
                scene_id = 47002,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30067,
                alias = "Npc30067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002108shidajiang",
                scene_id = 47002,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4002109"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002017xinyan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002110"] = {},
    ["4002111"] = {
        gadgets = {
            {
                id = 70710489,
                alias = "Gadget70710489Data1",
                pos = "Q4002111target2",
                scene_id = 47005,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710524,
                alias = "Gadget70710524data1",
                pos = "Q4002111target",
                scene_id = 47005,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710524,
                alias = "Gadget70710524data3",
                pos = "Q4002111target3",
                scene_id = 47005,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4002112"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4002017player"}}},
    ["4002113"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002113xinyan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002114"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002105xinyan",
                scene_id = 47005,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002105gongzi",
                scene_id = 47005,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30067,
                alias = "Npc30067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002105shidajiang",
                scene_id = 47005,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4002115"] = {},
    ["4002116"] = {},
    ["4002117"] = {
        gadgets = {
            {
                id = 70710489,
                alias = "Gadget70710489Data2",
                pos = "Q4002107target2",
                scene_id = 47002,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710524,
                alias = "Gadget70710524data2",
                pos = "Q4002107target",
                scene_id = 47002,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002118"] = {}
}

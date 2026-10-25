main_id = 73003
local tbl = {}
local n = 7300302
local v = 7300303
local n2 = 7300317
local n3 = 7300304
local n4 = 7300310
local n5 = 7300311
local n6 = 7300315
local n7 = 7300316
local n8 = 7300312
local n9 = 7300305
local n10 = 7300306
local n11 = 7300313
local n12 = 7300314
local n13 = 7300307
local n14 = 7300308
local n15 = 7300309
tbl[1] = 7300301
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7300301"] = {},
    ["7300302"] = {},
    ["7300303"] = {},
    ["7300304"] = {},
    ["7300305"] = {},
    ["7300306"] = {},
    ["7300307"] = {},
    ["7300308"] = {
        npcs = {
            {
                id = 20593,
                alias = "Npc20593",
                script = "Actor/Npc/TempNPC",
                pos = "N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300309"] = {
        npcs = {
            {
                id = 20593,
                alias = "Npc20593",
                script = "Actor/Npc/TempNPC",
                pos = "N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300310"] = {},
    ["7300311"] = {},
    ["7300312"] = {},
    ["7300313"] = {},
    ["7300314"] = {},
    ["7300315"] = {},
    ["7300316"] = {},
    ["7300317"] = {}
}

quest_data = {
    ["7300301"] = {},
    ["7300302"] = {
        npcs = {
            {
                id = 4198,
                alias = "Npc4198",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7300302_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20594,
                alias = "Npc20594",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300302_N20594",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7300303"] = {},
    ["7300304"] = {},
    ["7300305"] = {
        npcs = {
            {
                id = 20594,
                alias = "Npc20594",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300304_N20594",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300306"] = {
        npcs = {
            {
                id = 4198,
                alias = "Npc4198",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7300306_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300307"] = {
        npcs = {
            {
                id = 4198,
                alias = "Npc4198",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7300313_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20593,
                alias = "Npc20593",
                script = "Actor/Npc/TempNPC",
                pos = "N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q7300307"}}
    },
    ["7300308"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300309"] = {
        npcs = {
            {
                id = 20647,
                alias = "Npc20647",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300309_N20597",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20813,
                alias = "Npc20813",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300309_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7300310"] = {
        npcs = {
            {
                id = 4198,
                alias = "Npc4198",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7300310_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20758,
                alias = "Npc20758",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300310_N20758",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20759,
                alias = "Npc20759",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300310_N20759",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7300311"] = {},
    ["7300312"] = {
        npcs = {
            {
                id = 4198,
                alias = "Npc4198",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7300312_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20594,
                alias = "Npc20594",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300304_N20594",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7300313"] = {},
    ["7300314"] = {
        npcs = {
            {
                id = 4198,
                alias = "Npc4198",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7300313_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20594,
                alias = "Npc20594",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300304_N20594",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7300315"] = {
        npcs = {
            {
                id = 4198,
                alias = "Npc4198",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7300310_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300316"] = {
        npcs = {
            {
                id = 20594,
                alias = "Npc20594",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300304_N20594",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q7300316"}}
    },
    ["7300317"] = {}
}

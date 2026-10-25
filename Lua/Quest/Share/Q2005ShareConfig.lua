main_id = 2005
local tbl = {}
local n = 200506
local v = 200507
local n2 = 200502
local n3 = 200503
local n4 = 200504
local n5 = 200505
tbl[1] = 200501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["200501"] = {},
    ["200502"] = {
        gadgets = {
            {
                id = 70710350,
                alias = "Gadget707103501",
                pos = "Q200507task1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710350,
                alias = "Gadget707103502",
                pos = "Q200507task2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710350,
                alias = "Gadget707103503",
                pos = "Q200507task3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710350,
                alias = "Gadget707103504",
                pos = "Q200507task4",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 70710350,
                alias = "Gadget707103505",
                pos = "Q200507task5",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["200503"] = {},
    ["200504"] = {},
    ["200505"] = {},
    ["200506"] = {
        npcs = {
            {
                id = 3048,
                alias = "Npc3048",
                script = "Actor/Npc/TempNPC",
                pos = "Q200501syr2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12000,
                alias = "Npc12000",
                script = "Actor/Npc/TempNPC",
                pos = "Q200501mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12003,
                alias = "Npc12003",
                script = "Actor/Npc/TempNPC",
                pos = "Q200501mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200507"] = {
        npcs = {
            {
                id = 3048,
                alias = "Npc3048",
                script = "Actor/Npc/TempNPC",
                pos = "Q200501syr2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12000,
                alias = "Npc12000",
                script = "Actor/Npc/TempNPC",
                pos = "Q200501mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12003,
                alias = "Npc12003",
                script = "Actor/Npc/TempNPC",
                pos = "Q200501mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

quest_data = {
    ["200501"] = {
        npcs = {
            {
                id = 3048,
                alias = "Npc3048",
                script = "Actor/Npc/TempNPC",
                pos = "Q200501syr2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12000,
                alias = "Npc12000",
                script = "Actor/Npc/TempNPC",
                pos = "Q200501mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12003,
                alias = "Npc12003",
                script = "Actor/Npc/TempNPC",
                pos = "Q200501mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200501paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["200502"] = {},
    ["200503"] = {
        npcs = {
            {
                id = 12022,
                alias = "Npc12022",
                script = "Actor/Npc/TempNPC",
                pos = "Q200503mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200503paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200504"] = {
        npcs = {
            {
                id = 3002,
                alias = "Npc300201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q200504kui",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200505"] = {
        npcs = {
            {
                id = 3048,
                alias = "Npc3048",
                script = "Actor/Npc/TempNPC",
                pos = "Q200505syr2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200506"] = {},
    ["200507"] = {
        npcs = {
            {
                id = 12000,
                alias = "Npc12000",
                script = "Actor/Npc/TempNPC",
                pos = "Q200501mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12003,
                alias = "Npc12003",
                script = "Actor/Npc/TempNPC",
                pos = "Q200501mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12022,
                alias = "Npc12022",
                script = "Actor/Npc/TempNPC",
                pos = "Q200503mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12002,
                alias = "Npc12002",
                script = "Actor/Npc/TempNPC",
                pos = "Q200503mass3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12023,
                alias = "Npc12023",
                script = "Actor/Npc/TempNPC",
                pos = "Q200503mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        gadgets = {
            {
                id = 70710350,
                alias = "Gadget707103501",
                pos = "Q200507task1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710350,
                alias = "Gadget707103502",
                pos = "Q200507task2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710350,
                alias = "Gadget707103503",
                pos = "Q200507task3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710350,
                alias = "Gadget707103504",
                pos = "Q200507task4",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 70710350,
                alias = "Gadget707103505",
                pos = "Q200507task5",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}

main_id = 2004
local tbl = {}
local n = 200406
local v = 200407
local n2 = 200408
local n3 = 200402
local n4 = 200403
local n5 = 200404
local n6 = 200405
tbl[1] = 200401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["200401"] = {},
    ["200402"] = {},
    ["200403"] = {},
    ["200404"] = {
        gadgets = {
            {
                id = 70700006,
                alias = "Gadget70700006",
                pos = "Q200402task3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200405"] = {},
    ["200406"] = {
        npcs = {
            {
                id = 3129,
                alias = "Npc3129",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q200401syr1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12040,
                alias = "Npc12040",
                script = "Actor/Npc/TempNPC",
                pos = "Q200406mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12041,
                alias = "Npc12041",
                script = "Actor/Npc/TempNPC",
                pos = "Q200407mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200407"] = {
        npcs = {
            {
                id = 3129,
                alias = "Npc3129",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q200401syr1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12040,
                alias = "Npc12040",
                script = "Actor/Npc/TempNPC",
                pos = "Q200406mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12041,
                alias = "Npc12041",
                script = "Actor/Npc/TempNPC",
                pos = "Q200407mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200408"] = {
        npcs = {
            {
                id = 12040,
                alias = "Npc12040",
                script = "Actor/Npc/TempNPC",
                pos = "Q200406mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12041,
                alias = "Npc12041",
                script = "Actor/Npc/TempNPC",
                pos = "Q200407mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["200401"] = {
        npcs = {
            {
                id = 3129,
                alias = "Npc3129",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q200401syr1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12040,
                alias = "Npc12040",
                script = "Actor/Npc/TempNPC",
                pos = "Q200406mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12041,
                alias = "Npc12041",
                script = "Actor/Npc/TempNPC",
                pos = "Q200407mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200402"] = {
        npcs = {
            {
                id = 12018,
                alias = "Npc12018",
                script = "Actor/Npc/TempNPC",
                pos = "Q200402task1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710136,
                alias = "Gadget70710136",
                pos = "Q200402task1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70360089,
                alias = "Gadget70360089",
                pos = "Q200402task1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200403"] = {
        npcs = {
            {
                id = 12019,
                alias = "Npc12019",
                script = "Actor/Npc/TempNPC",
                pos = "Q200402task2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710465,
                alias = "Gadget70710465",
                pos = "Q200402gadget",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70360089,
                alias = "Gadget70360089",
                pos = "Q200402gadget",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200404"] = {
        npcs = {
            {
                id = 12020,
                alias = "Npc12020",
                script = "Actor/Npc/TempNPC",
                pos = "Q200402task3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70700006,
                alias = "Gadget70700006",
                pos = "Q200402task3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710483,
                alias = "Gadget7707104831",
                pos = "Q200402stone1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710483,
                alias = "Gadget707104832",
                pos = "Q200402stone2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710483,
                alias = "Gadget707104833",
                pos = "Q200402stone3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 70710433,
                alias = "Gadget70710433",
                pos = "Q200402stone1",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 70710434,
                alias = "Gadget70710434",
                pos = "Q200402stone2",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["200405"] = {
        npcs = {
            {
                id = 3129,
                alias = "Npc3129",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q200405SYR1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200406"] = {},
    ["200407"] = {},
    ["200408"] = {
        npcs = {
            {
                id = 3129,
                alias = "Npc3129",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q200401syr1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

main_id = 2006
local tbl = {}
local n = 200602
local v = 200603
local n2 = 200608
local n3 = 200609
local n4 = 200604
local n5 = 200605
local n6 = 200606
local n7 = 200607
local n8 = 200610
tbl[1] = 200601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["200601"] = {},
    ["200602"] = {
        npcs = {
            {
                id = 3031,
                alias = "Npc3031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200601mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12005,
                alias = "Npc12005",
                script = "Actor/Npc/TempNPC",
                pos = "Q200602mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200603"] = {
        npcs = {
            {
                id = 12005,
                alias = "Npc12005",
                script = "Actor/Npc/TempNPC",
                pos = "Q200602mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200604"] = {},
    ["200605"] = {
        npcs = {
            {
                id = 12006,
                alias = "Npc12006",
                script = "Actor/Npc/TempNPC",
                pos = "Q200605mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200606"] = {},
    ["200607"] = {},
    ["200608"] = {},
    ["200609"] = {}
}

quest_data = {
    ["200601"] = {
        npcs = {
            {
                id = 3034,
                alias = "Npc3034",
                script = "Actor/Npc/TempNPC",
                pos = "Q200601syr3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3031,
                alias = "Npc3031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200601mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12005,
                alias = "Npc12005",
                script = "Actor/Npc/TempNPC",
                pos = "Q200602mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200602"] = {
        npcs = {
            {
                id = 12005,
                alias = "Npc12005",
                script = "Actor/Npc/TempNPC",
                pos = "Q200602mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200603"] = {
        npcs = {
            {
                id = 12005,
                alias = "Npc12005",
                script = "Actor/Npc/TempNPC",
                pos = "Q200602mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12006,
                alias = "Npc12006",
                script = "Actor/Npc/TempNPC",
                pos = "Q200605mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200604"] = {
        npcs = {
            {
                id = 12006,
                alias = "Npc12006",
                script = "Actor/Npc/TempNPC",
                pos = "Q200605mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12005,
                alias = "Npc12005",
                script = "Actor/Npc/TempNPC",
                pos = "Q200602mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200605"] = {
        npcs = {
            {
                id = 12006,
                alias = "Npc12006",
                script = "Actor/Npc/TempNPC",
                pos = "Q200605mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12005,
                alias = "Npc12005",
                script = "Actor/Npc/TempNPC",
                pos = "Q200602mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200606"] = {
        npcs = {
            {
                id = 12007,
                alias = "Npc12007",
                script = "Actor/Npc/TempNPC",
                pos = "Q200606wunv",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200606paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200607"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200607paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q200607bachong",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200608"] = {
        npcs = {
            {
                id = 12006,
                alias = "Npc12006",
                script = "Actor/Npc/TempNPC",
                pos = "Q200605mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12005,
                alias = "Npc12005",
                script = "Actor/Npc/TempNPC",
                pos = "Q200602mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200609"] = {
        npcs = {
            {
                id = 12006,
                alias = "Npc12006",
                script = "Actor/Npc/TempNPC",
                pos = "Q200605mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12005,
                alias = "Npc12005",
                script = "Actor/Npc/TempNPC",
                pos = "Q200602mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200610"] = {}
}

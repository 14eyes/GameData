main_id = 19121
local tbl = {}
local n = 1912112
local v = 1912102
local n2 = 1912103
local n3 = 1912104
local n4 = 1912108
local n5 = 1912109
local n6 = 1912110
local n7 = 1912105
local n8 = 1912114
local n9 = 1912106
local n10 = 1912111
local n11 = 1912113
tbl[1] = 1912101
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220644"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133220684"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1912101"] = {},
    ["1912102"] = {},
    ["1912103"] = {},
    ["1912104"] = {
        npcs = {
            {
                id = 12161,
                alias = "Npc12161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912103mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1912105"] = {},
    ["1912106"] = {
        npcs = {
            {
                id = 12162,
                alias = "Npc12162",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912103mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1912108"] = {},
    ["1912109"] = {},
    ["1912110"] = {},
    ["1912111"] = {},
    ["1912112"] = {
        npcs = {
            {
                id = 12157,
                alias = "Npc12157",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912101mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1912113"] = {},
    ["1912114"] = {}
}

quest_data = {
    ["1912101"] = {
        npcs = {
            {
                id = 12157,
                alias = "Npc12157",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912101mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12236,
                alias = "Npc12236",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912101mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12237,
                alias = "Npc12237",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912101mass3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911101tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911101tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1912102"] = {
        npcs = {
            {
                id = 12160,
                alias = "Npc12160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912102mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12148,
                alias = "Npc12148",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912102mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12149,
                alias = "Npc12149",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912102mass3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1912103"] = {
        npcs = {
            {
                id = 12161,
                alias = "Npc12161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912103mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1912104"] = {
        npcs = {
            {
                id = 12171,
                alias = "Npc12171",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912108mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1912105"] = {
        npcs = {
            {
                id = 12161,
                alias = "Npc12161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912103mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1912106"] = {},
    ["1912108"] = {
        npcs = {
            {
                id = 12171,
                alias = "Npc12171",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912108mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1912109"] = {
        gadgets = {
            {
                id = 71700321,
                alias = "Gadget71700321",
                pos = "Q1912109FailCar",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1912110"] = {
        npcs = {
            {
                id = 12171,
                alias = "Npc12171",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912111mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1912111"] = {
        npcs = {
            {
                id = 12162,
                alias = "Npc12162",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912103mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1912112"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911201tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911201tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1912113"] = {
        npcs = {
            {
                id = 12148,
                alias = "Npc12148",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912113mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12149,
                alias = "Npc12149",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912113mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1912114"] = {
        npcs = {
            {
                id = 12162,
                alias = "Npc12162",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1912103mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

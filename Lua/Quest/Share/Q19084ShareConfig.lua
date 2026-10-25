main_id = 19084
local tbl = {}
local n = 1908401
local v = 1908410
local n2 = 1908411
local n3 = 1908412
local n4 = 1908402
local n5 = 1908403
local n6 = 1908405
local n7 = 1908406
local n8 = 1908407
local n9 = 1908409
local n10 = 1908404
tbl[1] = 1908408
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133107953"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"500"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1908401"] = {
        npcs = {
            {
                id = 214801,
                alias = "Npc214801",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908401tiantiezhui",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908403"] = {},
    ["1908405"] = {
        npcs = {
            {
                id = 214801,
                alias = "Npc214801",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908404tiantiezui",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908406"] = {
        npcs = {
            {
                id = 214801,
                alias = "Npc214801",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908404tiantiezui",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908407"] = {},
    ["1908408"] = {},
    ["1908409"] = {
        npcs = {
            {
                id = 214801,
                alias = "Npc214801",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908401tiantiezhui",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 204701,
                alias = "Npc204701",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908409zhihua",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 203601,
                alias = "Npc203601",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908409guanhai",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1908410"] = {},
    ["1908412"] = {}
}

quest_data = {
    ["1908401"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908401Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2034,
                alias = "Npc2034",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1908401player",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2035,
                alias = "Npc2035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1908401player",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1908402"] = {},
    ["1908403"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908403Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 214801,
                alias = "Npc214801",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908403tiantiezhui",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1908404"] = {},
    ["1908405"] = {},
    ["1908406"] = {},
    ["1908407"] = {
        npcs = {
            {
                id = 214801,
                alias = "Npc214801",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908401tiantiezhui",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 204701,
                alias = "Npc204701",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908409zhihua",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 203601,
                alias = "Npc203601",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908409guanhai",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2034,
                alias = "Npc2034",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1908401player",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2035,
                alias = "Npc2035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1908401player",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1908408"] = {
        npcs = {
            {
                id = 214801,
                alias = "Npc214801",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908401tiantiezhui",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2034,
                alias = "Npc2034",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1908401player",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2035,
                alias = "Npc2035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1908401player",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1908409"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908401Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2034,
                alias = "Npc2034",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1908401player",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2035,
                alias = "Npc2035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1908401player",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1908410"] = {
        npcs = {
            {
                id = 214801,
                alias = "Npc214801",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908401tiantiezhui",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2034,
                alias = "Npc2034",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1908401player",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2035,
                alias = "Npc2035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1908401player",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1908411"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908403Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 214801,
                alias = "Npc214801",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908403tiantiezhui",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1908412"] = {}
}

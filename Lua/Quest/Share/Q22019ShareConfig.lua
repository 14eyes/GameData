main_id = 22019
local tbl = {}
local n = 2201902
local v = 2201903
local n2 = 2201904
local n3 = 2201905
local n4 = 2201906
tbl[1] = 2201901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220151"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133220152"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2201901"] = {},
    ["2201902"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_shanhu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201904"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_shanhu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201906"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_shanhu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201903"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_shanhu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2201901"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019Longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3046,
                alias = "Npc3046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019tianye",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3047,
                alias = "Npc3047",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019anteng",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_shanhu",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["2201902"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019Longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10339,
                alias = "Npc10339",
                script = "Actor/Npc/TempNPC",
                pos = "Q22019daobaotuanA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10340,
                alias = "Npc10340",
                script = "Actor/Npc/TempNPC",
                pos = "Q22019daobaotuanB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3046,
                alias = "Npc3046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019tianye",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3047,
                alias = "Npc3047",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019anteng",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12108,
                alias = "Npc12108",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019_zuigui",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["2201903"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019Longer2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3046,
                alias = "Npc3046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019tianye",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3047,
                alias = "Npc3047",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019anteng",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2201904"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019Longer2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3046,
                alias = "Npc3046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019tianye",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3047,
                alias = "Npc3047",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019anteng",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2201905"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019Longer3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3046,
                alias = "Npc3046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019tianye",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3047,
                alias = "Npc3047",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019anteng",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_shanhu",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["2201906"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019Longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3046,
                alias = "Npc3046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019tianye",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3047,
                alias = "Npc3047",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22019anteng",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

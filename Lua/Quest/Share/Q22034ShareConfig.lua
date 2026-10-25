main_id = 22034
local tbl = {}
local n = 2203402
local v = 2203403
local n2 = 2203408
local n3 = 2203404
local n4 = 2203405
local n5 = 2203409
local n6 = 2203406
local n7 = 2203407
local n8 = 2203410
tbl[1] = 2203401
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220257"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133220258"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133220259"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["2203401"] = {}, ["2203402"] = {}, ["2203404"] = {}, ["2203406"] = {}}

quest_data = {
    ["2203401"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22034Longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203402"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22034Longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203403"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22034Longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203404"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22034Longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203405"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22034Longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203406"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22034Longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203407"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22034Longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203408"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22034CampA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q22034TalkA"}}
    },
    ["2203409"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22034CampB",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q22034TalkB"}}
    },
    ["2203410"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22034CampC",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q22034TalkC"}}
    }
}

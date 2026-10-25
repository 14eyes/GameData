main_id = 20104
local tbl = {}
local n = 2010402
local v = 2010403
local n2 = 2010404
local n3 = 2010405
tbl[1] = 2010401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133002905,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133002906,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl6 = {}
local str3 = "133002905,1"
tbl6[1] = "3"
tbl6[2] = str3
local tbl7 = {}
local str4 = "133002906,1"
tbl7[1] = "3"
tbl7[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl7
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl5.SERVER = server2
cancel_action = tbl5

rewind_data = {
    ["2010401"] = {
        npcs = {
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2010404"] = {
        npcs = {
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2010405"] = {
        npcs = {
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2010401"] = {
        npcs = {
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2010402"] = {
        npcs = {
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2010403"] = {
        npcs = {
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2010404"] = {
        npcs = {
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2010405"] = {
        npcs = {
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

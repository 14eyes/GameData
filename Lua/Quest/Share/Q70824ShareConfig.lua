main_id = 70824
local tbl = {}
local n = 7082402
local v = 7082403
local n2 = 7082404
tbl[1] = 7082401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "201018902,1"
tbl3[1] = "1018"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl5 = {}
local str2 = "201018902,1"
tbl5[1] = "1018"
tbl5[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl5
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl4.SERVER = server2
cancel_action = tbl4

rewind_data = {
    ["7082401"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70824NPC1531Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70824NPC1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70824NPC1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7082403"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1531Route1_7",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70824NPC1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70824NPC1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7082404"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1531Route1_7",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70824NPC1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70824NPC1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

quest_data = {
    ["7082401"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70824NPC1531Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1596,
                alias = "Npc1596",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70824NPC1596Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1595,
                alias = "Npc1595",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70824NPC1595Born",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1531Route1_7",
                scene_id = 1018,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["7082402"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1531Route1_7",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7082403"] = {},
    ["7082404"] = {}
}

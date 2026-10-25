main_id = 40011
local tbl = {}
local n = 4001116
local v = 4001115
local n2 = 4001101
local n3 = 4001102
local n4 = 4001108
local n5 = 4001113
local n6 = 4001109
local n7 = 4001110
local n8 = 4001114
local n9 = 4001117
local n10 = 4001118
local n11 = 4001119
local n12 = 4001103
local n13 = 4001120
local n14 = 4001104
local n15 = 4001105
local n16 = 4001106
local n17 = 4001107
local n18 = 4001111
tbl[1] = 4001112
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
tbl[18] = n16
tbl[19] = n17
tbl[20] = n18
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "144001903"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "144002901"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE = {}
local tbl5 = {}
local str3 = "2005005"
tbl5[1] = "2005"
tbl5[2] = str3
local tbl6 = {}
local str4 = "2005010"
tbl6[1] = "2005"
tbl6[2] = str4
qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE[1] = tbl5
qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE[2] = tbl6
server.QUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE = qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl7 = {}
local str5 = "144003013,1"
tbl7[1] = "4"
tbl7[2] = str5
local tbl8 = {}
local str6 = "144004083,2"
tbl8[1] = "4"
tbl8[2] = str6
local tbl9 = {}
local str7 = "201004008,1"
tbl9[1] = "1004"
tbl9[2] = str7
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl7
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl8
qUEST_EXEC_REFRESH_GROUP_SUITE[3] = tbl9
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4001101"] = {},
    ["4001104"] = {},
    ["4001105"] = {},
    ["4001106"] = {},
    ["4001107"] = {},
    ["4001110"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40011Klee3",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2603,
                alias = "Npc2603",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40011Jean",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2614,
                alias = "Npc2614",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40011Barbara",
                scene_id = 4,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001111"] = {},
    ["4001112"] = {},
    ["4001114"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40011Klee3",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2603,
                alias = "Npc2603",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40011Jean",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2614,
                alias = "Npc2614",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40011Barbara",
                scene_id = 4,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001115"] = {},
    ["4001116"] = {}
}

quest_data = {
    ["4001101"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40011Klee3",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2603,
                alias = "Npc2603",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40011Jean",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2614,
                alias = "Npc2614",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40011Barbara",
                scene_id = 4,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001102"] = {},
    ["4001103"] = {},
    ["4001104"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40011Klee",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 4, pos = "Q40011Avatar"}}
    },
    ["4001105"] = {},
    ["4001106"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40011Klee2",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001107"] = {},
    ["4001108"] = {},
    ["4001109"] = {},
    ["4001110"] = {},
    ["4001111"] = {
        npcs = {
            {
                id = 2614,
                alias = "Npc2614",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40011Barbara2",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710429,
                alias = "Gadget70710429",
                pos = "Q40011Badminton",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001112"] = {},
    ["4001113"] = {},
    ["4001114"] = {},
    ["4001115"] = {},
    ["4001116"] = {},
    ["4001117"] = {},
    ["4001118"] = {},
    ["4001119"] = {},
    ["4001120"] = {}
}

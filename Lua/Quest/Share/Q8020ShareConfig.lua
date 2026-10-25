main_id = 8020
local tbl = {}
local n = 802009
local v = 802002
local n2 = 802003
local n3 = 802004
local n4 = 802001
local n5 = 802013
local n6 = 802007
local n7 = 802011
local n8 = 802012
local n9 = 802010
local n10 = 802005
local n11 = 802006
tbl[1] = 802008
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
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["802001"] = {},
    ["802002"] = {},
    ["802003"] = {},
    ["802004"] = {},
    ["802005"] = {},
    ["802006"] = {},
    ["802007"] = {},
    ["802008"] = {},
    ["802009"] = {},
    ["802010"] = {},
    ["802011"] = {},
    ["802012"] = {},
    ["802013"] = {}
}

quest_data = {
    ["802001"] = {},
    ["802002"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400505:-1156.407,225.041,2705.783,0.000,231.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["802003"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330100238:-509.688,312.407,2135.033,0.000,187.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["802004"] = {},
    ["802005"] = {},
    ["802006"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "[20222_1:312.559,28.803,-0.023,0.000,90.000,0.000]",
                scene_id = 20222,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["802007"] = {},
    ["802008"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400508:-1036.462,217.296,2779.746,0.000,171.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_330400509:-1138.109,201.003,2686.616,0.000,146.100,0.000]"}}
    },
    ["802009"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400551:-1136.996,201.048,2684.435,0.000,359.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["802010"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "[20222_1:312.559,28.803,-0.023,0.000,90.000,0.000]",
                scene_id = 20222,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["802011"] = {},
    ["802012"] = {},
    ["802013"] = {
        npcs = {
            {
                id = 14150,
                alias = "Npc14150",
                script = "Actor/Npc/TempNPC",
                pos = "[20222_5:143.530,44.156,-7.200]",
                scene_id = 20222,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

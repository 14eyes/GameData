main_id = 73000
local tbl = {}
local n = 7300002
local v = 7300003
local n2 = 7300004
local n3 = 7300016
local n4 = 7300005
local n5 = 7300017
local n6 = 7300006
local n7 = 7300007
local n8 = 7300009
local n9 = 7300010
local n10 = 7300011
local n11 = 7300008
local n12 = 7300020
local n13 = 7300019
local n14 = 7300018
local n15 = 7300015
local n16 = 7300014
local n17 = 7300013
local n18 = 7300012
tbl[1] = 7300001
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
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7300001"] = {},
    ["7300002"] = {},
    ["7300003"] = {},
    ["7300004"] = {},
    ["7300005"] = {},
    ["7300006"] = {},
    ["7300007"] = {},
    ["7300008"] = {},
    ["7300009"] = {},
    ["7300010"] = {},
    ["7300012"] = {},
    ["7300013"] = {},
    ["7300015"] = {},
    ["7300016"] = {},
    ["7300017"] = {},
    ["7300018"] = {},
    ["7300019"] = {},
    ["7300020"] = {}
}

quest_data = {
    ["7300001"] = {
        npcs = {
            {
                id = 20600,
                alias = "Npc20600",
                script = "Actor/Npc/NpcEnkanomiya",
                pos = "WQL1_NPCCAVEOUT",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4185,
                alias = "Npc4185",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQL1_NPCCAVEOUT",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7300002"] = {},
    ["7300003"] = {},
    ["7300004"] = {},
    ["7300005"] = {},
    ["7300006"] = {
        npcs = {
            {
                id = 20601,
                alias = "Npc20601",
                script = "Actor/Npc/NpcEnkanomiya",
                pos = "WQL1_NPCROBOTBACK",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300007"] = {
        npcs = {
            {
                id = 20601,
                alias = "Npc20601",
                script = "Actor/Npc/NpcEnkanomiya",
                pos = "WQL1_NPCROBOTBACK",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300008"] = {
        npcs = {
            {
                id = 4157,
                alias = "Npc4157",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQL1_NPCPORTHOME",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300009"] = {
        npcs = {
            {
                id = 20601,
                alias = "Npc20601",
                script = "Actor/Npc/NpcEnkanomiya",
                pos = "WQL1_NPCROBOTBACK",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20600,
                alias = "Npc20600",
                script = "Actor/Npc/NpcEnkanomiya",
                pos = "Q7300005_N20600",
                scene_id = 3,
                room_id = 0,
                data_index = 2,
                bornShoesOffset = 1
            },
            {
                id = 4185,
                alias = "Npc4185",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7300005_N20600",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7300010"] = {
        npcs = {
            {
                id = 20601,
                alias = "Npc20601",
                script = "Actor/Npc/NpcEnkanomiya",
                pos = "WQL1_NPCROBOTBACK",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300011"] = {},
    ["7300012"] = {},
    ["7300013"] = {},
    ["7300014"] = {},
    ["7300015"] = {},
    ["7300016"] = {},
    ["7300017"] = {},
    ["7300018"] = {},
    ["7300019"] = {},
    ["7300020"] = {
        npcs = {
            {
                id = 4157,
                alias = "Npc4157",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQL1_NPCPORTHOME",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

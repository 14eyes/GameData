main_id = 2020
local tbl = {}
local n = 202007
local v = 202008
local n2 = 202009
local n3 = 202002
local n4 = 202013
local n5 = 202003
local n6 = 202004
local n7 = 202010
local n8 = 202011
local n9 = 202005
local n10 = 202006
local n11 = 202012
tbl[1] = 202001
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

local tbl2 = {
    ["202001"] = {avatar = {offline_dungeon_id = 0, scene_id = 3, pos = "Q202001Player1"}},
    ["202002"] = {avatar = {offline_dungeon_id = 0, scene_id = 3, pos = "Q202001Target"}},
    ["202003"] = {},
    ["202004"] = {},
    ["202005"] = {},
    ["202010"] = {},
    ["202011"] = {},
    ["202012"] = {
        avatar = {offline_dungeon_id = 0, scene_id = 3, pos = "Q202101Player"},
        quest_var = {-1, 1, -1, -1, -1}
    }
}

local tbl3 = {
    gadgets = {
        {
            id = 71700319,
            alias = "Gadget71700319",
            pos = "Q202005Dungeon",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

local quest_var = {}
local n12 = -1
local n13 = -1
local n14 = -1
local n15 = -1
quest_var[1] = 1
quest_var[2] = n12
quest_var[3] = n13
quest_var[4] = n14
quest_var[5] = n15
tbl3.quest_var = quest_var
tbl2["202013"] = tbl3
rewind_data = tbl2

quest_data = {
    ["202001"] = {
        npcs = {
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001_soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3178,
                alias = "Npc3178",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001_soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3061,
                alias = "Npc3061",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001_soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3177,
                alias = "Npc3177",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001_soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3176,
                alias = "Npc3176",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001_soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001_soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3175,
                alias = "Npc3175",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001_soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 3175,
                alias = "Npc3175",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Target",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3176,
                alias = "Npc3176",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3177,
                alias = "Npc3177",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3061,
                alias = "Npc3061",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3178,
                alias = "Npc3178",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q202001Player4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12138,
                alias = "Npc12138",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier1",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12139,
                alias = "Npc12139",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier2",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12140,
                alias = "Npc12140",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier4",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12141,
                alias = "Npc12141",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier5",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12142,
                alias = "Npc12142",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier8",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12143,
                alias = "Npc12143",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier6",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12144,
                alias = "Npc12144",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 12145,
                alias = "Npc12145",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier3",
                scene_id = 3,
                room_id = 0
            },
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/TempNPC",
                pos = "Q201905_soldier7",
                scene_id = 3,
                room_id = 0
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2020001Trans1"}}
    },
    ["202002"] = {},
    ["202003"] = {
        npcs = {
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q202003Ying",
                scene_id = 20117,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["202004"] = {},
    ["202005"] = {
        npcs = {
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q202003Ying",
                scene_id = 20117,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["202006"] = {transmit_points = {{point_id = 5, scene_id = 3, pos = "Q202101Player"}}},
    ["202007"] = {
        transmit_points = {
            {point_id = 2, scene_id = 3, pos = "Q2020001Trans2"},
            {point_id = 3, scene_id = 3, pos = "Q2020001Trans3"}
        }
    },
    ["202008"] = {
        transmit_points = {
            {point_id = 2, scene_id = 3, pos = "Q2020001Trans2"},
            {point_id = 3, scene_id = 3, pos = "Q2020001Trans3"},
            {point_id = 4, scene_id = 3, pos = "Q2020001Trans4"}
        }
    },
    ["202009"] = {transmit_points = {{point_id = 4, scene_id = 3, pos = "Q2020001Trans4"}}},
    ["202010"] = {},
    ["202011"] = {},
    ["202012"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q202101Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["202013"] = {}
}

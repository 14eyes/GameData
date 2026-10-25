main_id = 20004
local tbl = {}
local n = 2000406
local v = 2000407
local n2 = 2000402
local n3 = 2000403
local n4 = 2000404
local n5 = 2000405
tbl[1] = 2000401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101675"}}}}

rewind_data = {
    ["2000401"] = {},
    ["2000402"] = {
        npcs = {
            {
                id = 1606,
                alias = "Npc1606",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20004_N1606",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2000403"] = {
        npcs = {
            {
                id = 1606,
                alias = "Npc1606",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20004_N1606",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q2000402_N10095",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2000404"] = {
        npcs = {
            {
                id = 1606,
                alias = "Npc1606",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20004_N1606",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q2000405_N10095",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2000405"] = {
        npcs = {
            {
                id = 1606,
                alias = "Npc1606",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20004_N1606",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2000406"] = {
        npcs = {
            {
                id = 1606,
                alias = "Npc1606",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20004_N1606",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2000407"] = {
        npcs = {
            {
                id = 1606,
                alias = "Npc1606",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20004_N1606",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2000401"] = {
        npcs = {
            {
                id = 1606,
                alias = "Npc1606",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20004_N1606",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2000402"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q2000402_N10095",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2000403"] = {},
    ["2000404"] = {},
    ["2000405"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q2000405_N10095",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2000406"] = {},
    ["2000407"] = {}
}

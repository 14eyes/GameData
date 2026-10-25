main_id = 70000
local tbl = {}
local n = 7000001
local v = 7000002
local n2 = 7000004
local n3 = 7000005
local n4 = 7000003
local n5 = 7000006
tbl[1] = 7000010
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100759"}, {"100760"}, {"100761"}}}
}

rewind_data = {
    ["7000001"] = {},
    ["7000002"] = {
        npcs = {
            {
                id = 164201,
                alias = "Npc164201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7000001sayi",
                scene_id = 1004,
                room_id = 100401,
                data_index = 1
            }
        }
    },
    ["7000003"] = {
        npcs = {
            {
                id = 142501,
                alias = "Npc142501",
                script = "Actor/Npc/TempNPC",
                pos = "Q1011002Flora",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7000004"] = {},
    ["7000005"] = {
        npcs = {
            {
                id = 142501,
                alias = "Npc142501",
                script = "Actor/Npc/TempNPC",
                pos = "Q1011002Flora",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7000006"] = {
        npcs = {
            {
                id = 142501,
                alias = "Npc142501",
                script = "Actor/Npc/TempNPC",
                pos = "Q1011002Flora",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7000010"] = {}
}

quest_data = {
    ["7000001"] = {
        npcs = {
            {
                id = 164201,
                alias = "Npc164201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7000001sayi",
                scene_id = 1004,
                room_id = 100401,
                data_index = 1
            }
        }
    },
    ["7000002"] = {},
    ["7000003"] = {},
    ["7000004"] = {
        npcs = {
            {
                id = 142501,
                alias = "Npc142501",
                script = "Actor/Npc/TempNPC",
                pos = "Q1011002Flora",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7000005"] = {},
    ["7000006"] = {
        npcs = {
            {
                id = 164201,
                alias = "Npc164201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7000001sayi",
                scene_id = 1004,
                room_id = 100401,
                data_index = 1
            }
        }
    },
    ["7000010"] = {}
}

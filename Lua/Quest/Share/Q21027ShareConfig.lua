main_id = 21027
local tbl = {}
local n = 2102702
local v = 2102703
local n2 = 2102704
local n3 = 2102705
local n4 = 2102706
local n5 = 2102707
local n6 = 2102708
local n7 = 2102709
tbl[1] = 2102701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2102701"}, {"2102702"}, {"2102703"}}}}

rewind_data = {
    ["2102701"] = {},
    ["2102702"] = {},
    ["2102704"] = {},
    ["2102705"] = {},
    ["2102706"] = {},
    ["2102707"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102701_N2031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2102701"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2100001_N2031_310701492",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2102702"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2100001_N2031_310701492",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102703_N2045",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2102703"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102704_N2031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102703_N2045",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2102704"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102701_N2031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2102705"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102701_N2031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2102706"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102701_N2031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2102707"] = {},
    ["2102708"] = {},
    ["2102709"] = {}
}

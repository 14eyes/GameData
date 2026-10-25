main_id = 21028
local tbl = {}
local n = 2102802
local v = 2102803
local n2 = 2102804
local n3 = 2102805
tbl[1] = 2102801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2102801"] = {},
    ["2102802"] = {},
    ["2102804"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102708_N2031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2103,
                alias = "Npc2103",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102707_N2103",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2102805"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102708_N2031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2103,
                alias = "Npc2103",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102707_N2103",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2102801"] = {
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
    ["2102802"] = {
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
                id = 2103,
                alias = "Npc2103",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102707_N2103",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2102803"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102708_N2031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2102804"] = {},
    ["2102805"] = {}
}

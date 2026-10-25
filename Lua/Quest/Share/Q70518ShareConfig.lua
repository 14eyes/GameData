main_id = 70518
local tbl = {}
local n = 7051804
local v = 7051802
local n2 = 7051805
local n3 = 7051803
tbl[1] = 7051801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120049"}, {"120082"}},
        QUEST_EXEC_STOP_BARGAIN = {{"7"}}
    }
}

rewind_data = {
    ["7051801"] = {},
    ["7051802"] = {},
    ["7051803"] = {},
    ["7051804"] = {},
    ["7051805"] = {
        npcs = {
            {
                id = 30235,
                alias = "Npc30235",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051802_N30235",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7051801"] = {
        npcs = {
            {
                id = 30274,
                alias = "Npc30274",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051801_N30234",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30234,
                alias = "Npc30234",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051801_N30234",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7051802"] = {
        npcs = {
            {
                id = 30235,
                alias = "Npc30235",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051802_N30235",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051803"] = {
        npcs = {
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "Q7051803_N1008",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051804"] = {
        npcs = {
            {
                id = 30274,
                alias = "Npc30274",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051801_N30234",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30234,
                alias = "Npc30234",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051801_N30234",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7051805"] = {}
}

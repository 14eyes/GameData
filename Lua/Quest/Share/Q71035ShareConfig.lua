main_id = 71035
local tbl = {}
local n = 7103502
local v = 7103503
local n2 = 7103504
local n3 = 7103505
local n4 = 7103506
local n5 = 7103507
local n6 = 7103508
tbl[1] = 7103501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7103501"] = {},
    ["7103502"] = {},
    ["7103503"] = {},
    ["7103504"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103503_N10204_310701425",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103505"] = {},
    ["7103506"] = {
        npcs = {
            {
                id = 12326,
                alias = "Npc12326",
                script = "Actor/Npc/TempNPC",
                pos = "Q71035WPA_Attack",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103507"] = {}
}

quest_data = {
    ["7103501"] = {
        npcs = {
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103501_MaoChef",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103502"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7103501_guide_310701426",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103501_MaoChef",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103503"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103503_N10204_310701425",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103504"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103503_N10204_310701425",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12326,
                alias = "Npc12326",
                script = "Actor/Npc/TempNPC",
                pos = "Q71035WPA_Attack",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103505"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103503_N10204_310701425",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12326,
                alias = "Npc12326",
                script = "Actor/Npc/TempNPC",
                pos = "Q71035WPA_Attack",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103506"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103503_N10204_310701425",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103507"] = {
        npcs = {
            {
                id = 12326,
                alias = "Npc12326",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103503_N10204_310701425",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103508"] = {
        npcs = {
            {
                id = 12326,
                alias = "Npc12326",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103503_N10204_310701425",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

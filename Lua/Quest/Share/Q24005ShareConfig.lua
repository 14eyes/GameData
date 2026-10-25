main_id = 24005
local tbl = {}
local n = 2400502
local v = 2400503
local n2 = 2400504
local n3 = 2400505
local n4 = 2400506
tbl[1] = 2400501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2400505"}}}}

rewind_data = {
    ["2400501"] = {},
    ["2400502"] = {},
    ["2400503"] = {},
    ["2400504"] = {},
    ["2400505"] = {
        npcs = {
            {
                id = 5057,
                alias = "Npc5057",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100201:3476.306,424.865,4587.770,0.000,304.615,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400506"] = {
        npcs = {
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100094:3473.772,424.829,4587.013,0.000,111.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100209:3474.466,424.829,4588.971,0.000,122.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100208:3473.898,424.829,4588.135,0.000,118.080,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5057,
                alias = "Npc5057",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100201:3476.306,424.865,4587.770,0.000,304.615,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

quest_data = {
    ["2400501"] = {
        npcs = {
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100091:3561.151,427.029,4475.489,0.000,91.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100090:3561.743,427.029,4474.776]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400501_N5062",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2400502"] = {
        npcs = {
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100092:3500.934,426.624,4485.952,0.000,285.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100090:3561.743,427.029,4474.776]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2400503"] = {
        npcs = {
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100093:3516.875,451.240,4654.831,0.000,62.140,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400504"] = {
        npcs = {
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100094:3473.772,424.829,4587.013,0.000,111.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5057,
                alias = "Npc5057",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100201:3476.306,424.865,4587.770,0.000,304.615,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2400505"] = {
        npcs = {
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100218:3473.475,424.829,4586.260,0.000,232.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100227:3470.523,424.829,4581.417,0.000,19.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100217:3472.949,424.829,4585.567,0.000,33.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2400506"] = {}
}

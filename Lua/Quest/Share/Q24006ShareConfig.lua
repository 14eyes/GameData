main_id = 24006
local tbl = {}
local n = 2400602
local v = 2400603
local n2 = 2400604
local n3 = 2400605
local n4 = 2400606
tbl[1] = 2400601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["2400601"] = {}, ["2400605"] = {}, ["2400606"] = {}}

quest_data = {
    ["2400601"] = {
        npcs = {
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100107:3473.437,287.260,4526.076]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100095:3474.308,287.259,4527.064,0.000,250.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100108:3472.934,287.261,4527.085,0.000,121.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2400602"] = {
        npcs = {
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100097:3505.427,283.052,4563.936,0.000,325.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400603"] = {
        npcs = {
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100098:3497.978,283.325,4550.613,0.000,1.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400604"] = {
        npcs = {
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100099:3519.501,283.052,4551.474,0.000,71.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400605"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340100170:3498.448,281.167,4542.663,0.000,152.200,0.000]"}}
    },
    ["2400606"] = {
        npcs = {
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100168:3499.390,281.167,4541.466,0.000,315.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100100:3500.581,281.167,4542.302,0.000,357.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100169:3498.613,281.167,4541.114,0.000,353.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

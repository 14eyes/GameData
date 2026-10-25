main_id = 24003
local tbl = {}
local n = 2400302
local v = 2400304
local n2 = 2400306
local n3 = 2400303
local n4 = 2400305
local n5 = 2400307
tbl[1] = 2400301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["2400301"] = {}, ["2400305"] = {}, ["2400307"] = {}}

quest_data = {
    ["2400301"] = {
        npcs = {
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100072:3472.500,287.264,4526.208,0.000,105.140,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100071:3473.073,287.266,4526.016,0.000,290.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2400302"] = {
        npcs = {
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100073:3494.198,283.052,4513.990,0.000,139.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400303"] = {
        npcs = {
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100074:3488.838,283.052,4524.394,0.000,204.240,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400304"] = {
        npcs = {
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100075:3475.189,281.167,4544.042,0.000,257.140,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400305"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340100076:3473.326,287.270,4527.348,0.000,201.120,0.000]"}}
    },
    ["2400306"] = {
        npcs = {
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100077:3510.585,283.088,4526.942,0.000,102.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400307"] = {
        npcs = {
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100072:3472.500,287.264,4526.208,0.000,105.140,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100071:3473.073,287.266,4526.016,0.000,290.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

main_id = 74800
local tbl = {}
local n = 7480007
local v = 7480006
local n2 = 7480003
local n3 = 7480005
local n4 = 7480002
local n5 = 7480004
local n6 = 7480008
tbl[1] = 7480001
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
    ["7480001"] = {},
    ["7480002"] = {},
    ["7480003"] = {},
    ["7480004"] = {},
    ["7480005"] = {},
    ["7480007"] = {}
}

quest_data = {
    ["7480001"] = {},
    ["7480002"] = {},
    ["7480003"] = {
        npcs = {
            {
                id = 5268,
                alias = "Npc5268",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5636:3493.355,426.619,4519.962]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5074,
                alias = "Npc5074",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5636:3493.355,426.619,4519.962]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7480004"] = {},
    ["7480005"] = {
        npcs = {
            {
                id = 5268,
                alias = "Npc5268",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5637:3518.358,421.427,4608.873]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5637:3518.358,421.427,4608.873]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5055,
                alias = "Npc5055",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5637:3518.358,421.427,4608.873]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5076,
                alias = "Npc5076",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5870:3476.246,427.644,4543.776]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7480006"] = {
        npcs = {
            {
                id = 5268,
                alias = "Npc5268",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5652:3791.003,497.477,3888.759]",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                platformInfo = {
                    sceneId = 3,
                    groupId = 133402164,
                    configId = 164001,
                    offsetPos = {x = 0.0, y = 0.0, z = 0.0},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_5635:3540.272,495.269,4551.880,0.000,48.640,0.000]"}}
    },
    ["7480007"] = {
        npcs = {
            {
                id = 5268,
                alias = "Npc5268",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5634:3792.550,494.797,3865.404,0.000,179.721,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_5652:3791.003,497.477,3888.759]"}}
    },
    ["7480008"] = {}
}

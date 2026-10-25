main_id = 24004
local tbl = {}
local n = 2400402
local v = 2400403
local n2 = 2400404
local n3 = 2400405
local n4 = 2400406
tbl[1] = 2400401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["2400401"] = {}, ["2400405"] = {}, ["2400406"] = {}}

quest_data = {
    ["2400401"] = {
        npcs = {
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100080:3590.053,428.201,4595.292,0.000,321.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100079:3589.609,428.201,4595.910,0.000,144.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2400402"] = {
        npcs = {
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100121:3592.757,428.202,4572.817,0.000,276.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400403"] = {
        npcs = {
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100120:3616.374,428.202,4565.417,0.000,115.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400404"] = {
        npcs = {
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100087:3614.019,428.201,4593.792,0.000,211.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400405"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340100200:3587.600,428.201,4598.626,0.000,54.800,0.000]"}}
    },
    ["2400406"] = {
        npcs = {
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100197:3588.966,428.201,4598.902,0.000,296.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5063,
                alias = "Npc5063",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100198:3587.754,428.201,4599.919,0.000,135.500,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100199:3588.775,428.201,4599.758,0.000,236.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

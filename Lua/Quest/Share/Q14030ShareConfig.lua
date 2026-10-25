main_id = 14030
local tbl = {}
local n = 1403002
local v = 1403003
tbl[1] = 1403001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1403001"] = {}, ["1403002"] = {}, ["1403003"] = {}}

quest_data = {
    ["1403001"] = {
        npcs = {
            {
                id = 1079,
                alias = "Npc1079",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100752:3540.714,427.028,4471.999,0.000,184.824,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14031,
                alias = "Npc14031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100757:3539.803,427.028,4472.653,0.000,170.716,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14032,
                alias = "Npc14032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100756:3540.897,427.028,4472.991,0.000,182.607,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5027,
                alias = "Npc5027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100751:3540.796,427.559,4468.733,0.000,4.828,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13747,
                alias = "Npc13747",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100753:3542.088,427.029,4471.403,0.000,205.948,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13748,
                alias = "Npc13748",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100754:3541.827,427.028,4472.378,0.000,188.972,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13758,
                alias = "Npc13758",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100755:3540.126,427.029,4471.376,0.000,167.773,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340100682:3517.518,440.000,4488.287,0.000,133.416,0.000]"}}
    },
    ["1403002"] = {
        npcs = {
            {
                id = 1079,
                alias = "Npc1079",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340400021:2995.682,442.376,3869.478,0.000,232.944,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5027,
                alias = "Npc5027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100751:3540.796,427.559,4468.733,0.000,4.828,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13747,
                alias = "Npc13747",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100758:3546.467,427.064,4470.447,0.000,221.254,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13748,
                alias = "Npc13748",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100759:3538.431,427.064,4470.719,0.000,180.682,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13758,
                alias = "Npc13758",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100760:3539.283,427.064,4470.623,0.000,221.257,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340400015:2995.798,442.204,3867.550,0.000,301.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340400016:2994.470,442.177,3866.998,0.000,358.224,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1403003"] = {
        npcs = {
            {
                id = 1079,
                alias = "Npc1079",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340400012:3028.675,440.000,3892.330,0.000,93.877,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340400019:2997.143,442.015,3866.980,0.000,242.495,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340400020:2995.875,442.084,3866.184,0.000,68.614,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

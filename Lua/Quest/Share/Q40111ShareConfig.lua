main_id = 40111
local tbl = {}
local n = 4011102
local v = 4011103
local n2 = 4011104
local n3 = 4011105
local n4 = 4011106
tbl[1] = 4011101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4011101"] = {}, ["4011102"] = {}, ["4011103"] = {}, ["4011104"] = {}, ["4011105"] = {}}

quest_data = {
    ["4011101"] = {
        npcs = {
            {
                id = 30357,
                alias = "Npc30357",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4793:2218.953,229.990,-795.867,0.000,19.710,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30358,
                alias = "Npc30358",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4794:2219.553,229.990,-794.582,0.000,210.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3765:2226.640,229.990,-794.428,0.000,310.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_3886:2217.726,229.990,-810.883,0.000,119.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1567,
                alias = "Npc1567",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3887:2213.180,230.455,-791.218,0.000,150.240,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1433,
                alias = "Npc1433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3971:2211.239,230.088,-802.836,0.000,157.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3972:2211.780,230.088,-804.138,0.000,335.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4011102"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4381:-515.724,208.175,239.267,0.000,99.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4382:-526.942,209.821,255.266,0.000,157.750,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3806:-519.376,207.814,235.536,0.000,216.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4383:-526.719,209.821,253.546,0.000,0.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2039,
                alias = "Npc2039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3807:-514.682,208.175,239.447,0.000,258.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4011103"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4389:-2576.581,214.213,-3838.894,0.000,183.330,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4391:-2600.769,217.656,-3834.062,0.000,329.640,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4392:-2600.298,217.656,-3833.128,0.000,272.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4393:-2597.346,217.736,-3846.769,0.000,150.350,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4390:-2576.672,214.213,-3840.351,0.000,11.650,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4394:-2595.932,217.736,-3846.530,0.000,187.450,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4011104"] = {},
    ["4011105"] = {},
    ["4011106"] = {}
}

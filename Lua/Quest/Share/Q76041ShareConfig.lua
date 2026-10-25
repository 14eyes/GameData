main_id = 76041
local tbl = {}
local n = 7604102
local v = 7604103
local n2 = 7604104
tbl[1] = 7604101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7604101"] = {}, ["7604102"] = {}, ["7604103"] = {}, ["7604104"] = {}}

quest_data = {
    ["7604101"] = {
        npcs = {
            {
                id = 22110,
                alias = "Npc22110",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12621:2946.031,237.690,9899.229,0.000,79.607,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 22111,
                alias = "Npc22111",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12622:2945.290,237.776,9900.871,0.000,118.118,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7604102"] = {
        npcs = {
            {
                id = 22110,
                alias = "Npc22110",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12621:2946.031,237.690,9899.229,0.000,79.607,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 22111,
                alias = "Npc22111",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12622:2945.290,237.776,9900.871,0.000,118.118,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7604103"] = {},
    ["7604104"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12623:2974.089,237.714,9899.333,0.000,270.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_12624:3119.532,360.016,9898.503,0.000,90.000,0.000]"}}
    }
}

main_id = 77671
local tbl = {}
local n = 7767102
local v = 7767103
tbl[1] = 7767101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7767101"] = {}, ["7767102"] = {}, ["7767103"] = {}}

quest_data = {
    ["7767101"] = {},
    ["7767102"] = {
        npcs = {
            {
                id = 17094,
                alias = "Npc17094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200028:9354.339,377.323,6511.537,0.000,42.252,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_7:66.733,-4.171,-465.882]",
                scene_id = 1159,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1159, pos = "[1159_22:-0.001,0.052,-362.368,0.000,180.136,0.000]"}}
    },
    ["7767103"] = {
        npcs = {
            {
                id = 17094,
                alias = "Npc17094",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_22:-0.001,0.052,-362.368,0.000,180.136,0.000]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_7:66.733,-4.171,-465.882]",
                scene_id = 1159,
                room_id = 1,
                data_index = 2
            }
        }
    }
}

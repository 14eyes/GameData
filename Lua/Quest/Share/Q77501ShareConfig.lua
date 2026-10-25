main_id = 77501
local tbl = {}
local n = 7750102
local v = 7750103
tbl[1] = 7750101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7750101"] = {}, ["7750102"] = {}, ["7750103"] = {}}

quest_data = {
    ["7750101"] = {},
    ["7750102"] = {
        npcs = {
            {
                id = 16951,
                alias = "Npc16951",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18034:9616.497,397.284,6688.970,0.000,4.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_18033:9342.603,248.560,6687.808]"}}
    },
    ["7750103"] = {
        npcs = {
            {
                id = 16951,
                alias = "Npc16951",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18033:9342.603,248.560,6687.808]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17015,
                alias = "Npc17015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18033:9342.603,248.560,6687.808]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17027,
                alias = "Npc17027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18033:9342.603,248.560,6687.808]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

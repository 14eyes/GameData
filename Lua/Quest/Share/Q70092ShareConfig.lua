main_id = 70092
local tbl = {}
local n = 7009204
local v = 7009202
local n2 = 7009203
tbl[1] = 7009201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7009201"] = {}, ["7009202"] = {}, ["7009203"] = {}, ["7009204"] = {}}

quest_data = {
    ["7009201"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16278:2312.309,249.990,-769.823,0.000,22.825,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1324, pos = "[20355_1:0.736,-0.111,25.809,0.000,175.350,0.000]"}}
    },
    ["7009202"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20355_2:0.252,-0.111,22.501]",
                scene_id = 20355,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1329,
                alias = "Npc1329_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16278:2312.309,249.990,-769.823,0.000,22.825,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1324, pos = "[20355_1:0.736,-0.111,25.809,0.000,175.350,0.000]"}}
    },
    ["7009203"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16278:2312.309,249.990,-769.823,0.000,22.825,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7009204"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16278:2312.309,249.990,-769.823,0.000,22.825,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

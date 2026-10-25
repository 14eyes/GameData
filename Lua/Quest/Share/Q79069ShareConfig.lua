main_id = 79069
local tbl = {}
local n = 7906902
local v = 7906903
tbl[1] = 7906901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7906901"] = {}}

quest_data = {
    ["7906901"] = {},
    ["7906902"] = {
        npcs = {
            {
                id = 21522,
                alias = "Npc21522",
                script = "Actor/Npc/TempNPC",
                pos = "[100_136:322.032,462.769,111.570]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 100, pos = "[100_138:340.754,462.650,128.813,0.000,228.850,0.000]"}}
    },
    ["7906903"] = {
        npcs = {
            {
                id = 21522,
                alias = "Npc21522",
                script = "Actor/Npc/TempNPC",
                pos = "[100_137:321.557,463.199,111.756,0.000,47.248,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

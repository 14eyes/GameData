main_id = 75185
local tbl = {}
local n = 7518503
local v = 7518502
tbl[1] = 7518501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7518501"] = {},
    ["7518502"] = {
        npcs = {
            {
                id = 6345,
                alias = "Npc6345",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10845:-3109.686,231.466,10827.870,0.000,166.674,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7518501"] = {
        npcs = {
            {
                id = 6345,
                alias = "Npc6345",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10845:-3109.686,231.466,10827.870,0.000,166.674,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7518502"] = {},
    ["7518503"] = {
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_10860:-3202.813,200.000,10897.860,0.000,43.316,0.000]"},
            {point_id = 2, scene_id = 3, pos = "[3_11024:-3107.275,229.146,10820.320,0.000,334.114,0.000]"}
        }
    }
}

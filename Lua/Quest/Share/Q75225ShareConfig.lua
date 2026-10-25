main_id = 75225
local tbl = {}
local n = 7522502
local v = 7522503
tbl[1] = 7522501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7522501"] = {},
    ["7522502"] = {},
    ["7522503"] = {
        npcs = {
            {
                id = 6332,
                alias = "Npc6332",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11056:-3145.163,298.253,10201.040,0.000,287.836,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7522501"] = {
        npcs = {
            {
                id = 6332,
                alias = "Npc6332",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11055:-3328.638,226.866,10332.250,0.000,28.768,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_11057:-3317.479,217.059,10350.950,0.000,181.356,0.000]"}}
    },
    ["7522502"] = {
        npcs = {
            {
                id = 6332,
                alias = "Npc6332",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11056:-3145.163,298.253,10201.040,0.000,287.836,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 2, scene_id = 3, pos = "[3_11057:-3317.479,217.059,10350.950,0.000,181.356,0.000]"},
            {point_id = 1, scene_id = 3, pos = "[3_11058:-3333.704,226.446,10324.120,0.000,26.356,0.000]"},
            {point_id = 3, scene_id = 3, pos = "[3_11061:-3147.237,297.802,10200.450,0.000,88.277,0.000]"}
        }
    },
    ["7522503"] = {
        transmit_points = {
            {point_id = 2, scene_id = 3, pos = "[3_11057:-3317.479,217.059,10350.950,0.000,181.356,0.000]"},
            {point_id = 1, scene_id = 3, pos = "[3_11058:-3333.704,226.446,10324.120,0.000,26.356,0.000]"}
        }
    }
}

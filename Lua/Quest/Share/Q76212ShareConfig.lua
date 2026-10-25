main_id = 76212
local tbl = {}
local n = 7621202
tbl[1] = 7621201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7621201"] = {}, ["7621202"] = {}}

quest_data = {
    ["7621201"] = {
        npcs = {
            {
                id = 7738,
                alias = "Npc7738",
                script = "Actor/Npc/TempNPC",
                pos = "[103_210:-215.151,158.854,1289.165,0.000,206.106,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1,
                platformInfo = {
                    sceneId = 103,
                    groupId = 610305076,
                    configId = 76002,
                    offsetPos = {x = 0.0, y = 0.02, z = 0.0},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            }
        }
    },
    ["7621202"] = {
        npcs = {
            {
                id = 7738,
                alias = "Npc7738",
                script = "Actor/Npc/TempNPC",
                pos = "[103_211:-213.595,158.721,1299.342,0.000,65.362,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 103, pos = "[103_212:-212.098,158.721,1300.130,0.000,243.100,0.000]"}}
    }
}

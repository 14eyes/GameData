main_id = 40225
local tbl = {}
local n = 4022502
tbl[1] = 4022501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4022501"] = {}, ["4022502"] = {}}

quest_data = {
    ["4022501"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700243:1131.766,207.209,9243.030]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "[3_360700260:1440.476,209.401,9247.771,0.000,338.929,0.000]"}}
    },
    ["4022502"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700260:1440.476,209.401,9247.771,0.000,338.929,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 7, scene_id = 3, pos = "[3_360700260:1440.476,209.401,9247.771,0.000,338.929,0.000]"}}
    }
}

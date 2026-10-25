main_id = 40227
local tbl = {}
local n = 4022702
tbl[1] = 4022701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4022701"] = {}, ["4022702"] = {}}

quest_data = {
    ["4022701"] = {
        npcs = {
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[1151_42:-0.815,0.557,5.745]",
                scene_id = 1151,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 5, scene_id = 3, pos = "[3_360700259:1448.698,209.454,9264.802,0.000,275.976,0.000]"}}
    },
    ["4022702"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700259:1448.698,209.454,9264.802,0.000,275.976,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 9, scene_id = 3, pos = "[3_360700259:1448.698,209.454,9264.802,0.000,275.976,0.000]"}}
    }
}

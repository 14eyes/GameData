main_id = 76087
local tbl = {}
local n = 7608703
local v = 7608704
tbl[1] = 7608702
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7608703"] = {}, ["7608704"] = {}}

quest_data = {
    ["7608702"] = {},
    ["7608703"] = {
        npcs = {
            {
                id = 7178,
                alias = "Npc7178",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360100137:3735.806,218.623,9214.563]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360100170:3814.924,201.177,9240.952]"}}
    },
    ["7608704"] = {
        npcs = {
            {
                id = 7178,
                alias = "Npc7178",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360100171:3815.707,200.956,9241.142,0.000,271.661,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

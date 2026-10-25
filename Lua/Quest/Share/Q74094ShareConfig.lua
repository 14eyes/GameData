main_id = 74094
local tbl = {}
local n = 7409402
tbl[1] = 7409401
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7409401"] = {}, ["7409402"] = {}}

quest_data = {
    ["7409401"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_5272:4440.066,5.960,4658.173,0.000,350.000,0.000]"}}
    },
    ["7409402"] = {
        npcs = {
            {
                id = 5236,
                alias = "Npc5236",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5273:4439.587,6.016,4660.302,0.000,172.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

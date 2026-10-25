main_id = 73650
local tbl = {}
local n = 7365002
tbl[1] = 7365001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7365001"] = {}, ["7365002"] = {}}

quest_data = {
    ["7365001"] = {
        npcs = {
            {
                id = 30225,
                alias = "Npc30225",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7365001_N30225",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q7365002_N10000005"}}
    },
    ["7365002"] = {
        npcs = {
            {
                id = 30225,
                alias = "Npc30225",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7365002_N30225",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

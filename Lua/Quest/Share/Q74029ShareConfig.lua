main_id = 74029
local tbl = {}
local n = 7402902
local v = 7402905
tbl[1] = 7402901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7402901"] = {},
    ["7402902"] = {
        npcs = {
            {
                id = 5321,
                alias = "Npc5321",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4584:2354.116,242.590,4980.429,0.000,184.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402905"] = {
        npcs = {
            {
                id = 5321,
                alias = "Npc5321",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4584:2354.116,242.590,4980.429,0.000,184.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7402901"] = {
        npcs = {
            {
                id = 5321,
                alias = "Npc5321",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4584:2354.116,242.590,4980.429,0.000,184.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402902"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340300094:2357.103,242.590,4979.528,0.000,262.001,0.000]"}}
    },
    ["7402905"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340300094:2357.103,242.590,4979.528,0.000,262.001,0.000]"}}
    }
}

main_id = 72682
local tbl = {}
local n = 7268202
tbl[1] = 7268201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7268201"] = {},
    ["7268202"] = {
        npcs = {
            {
                id = 30065,
                alias = "Npc30065",
                script = "Actor/Npc/TempNPC",
                pos = "Q7268202_N30065",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7268201"] = {
        npcs = {
            {
                id = 30065,
                alias = "Npc30065",
                script = "Actor/Npc/TempNPC",
                pos = "Q7268201_N30065",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 7268201, scene_id = 3, pos = "Q7268202_Player"}}
    },
    ["7268202"] = {
        npcs = {
            {
                id = 30065,
                alias = "Npc30065",
                script = "Actor/Npc/TempNPC",
                pos = "Q7268202_N30065",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

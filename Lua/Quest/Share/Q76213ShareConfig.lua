main_id = 76213
local tbl = {}
local n = 7621303
local v = 7621304
tbl[1] = 7621302
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7621302"] = {},
    ["7621303"] = {
        npcs = {
            {
                id = 7735,
                alias = "Npc7735",
                script = "Actor/Npc/TempNPC",
                pos = "[103_222:-215.831,133.782,1254.025,0.000,301.303,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7621304"] = {
        npcs = {
            {
                id = 7735,
                alias = "Npc7735",
                script = "Actor/Npc/TempNPC",
                pos = "[103_222:-215.831,133.782,1254.025,0.000,301.303,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7621302"] = {
        npcs = {
            {
                id = 7735,
                alias = "Npc7735",
                script = "Actor/Npc/TempNPC",
                pos = "[103_222:-215.831,133.782,1254.025,0.000,301.303,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7621303"] = {},
    ["7621304"] = {}
}

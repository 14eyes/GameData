main_id = 74685
local tbl = {}
local n = 7468502
tbl[1] = 7468501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7468501"] = {},
    ["7468502"] = {
        npcs = {
            {
                id = 30565,
                alias = "Npc30565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500103:1819.629,449.792,4817.158,0.000,359.261,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7468501"] = {
        npcs = {
            {
                id = 30565,
                alias = "Npc30565",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500103:1819.629,449.792,4817.158,0.000,359.261,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7468502"] = {}
}

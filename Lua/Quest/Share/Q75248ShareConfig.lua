main_id = 75248
local tbl = {}
local n = 7524802
tbl[1] = 7524801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7524801"] = {},
    ["7524802"] = {
        npcs = {
            {
                id = 6526,
                alias = "Npc6526",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200018:1623.971,221.876,15115.380,0.000,243.678,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7524801"] = {
        npcs = {
            {
                id = 6526,
                alias = "Npc6526",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200018:1623.971,221.876,15115.380,0.000,243.678,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7524802"] = {}
}

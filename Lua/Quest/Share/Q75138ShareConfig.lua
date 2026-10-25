main_id = 75138
local tbl = {}
local n = 7513802
tbl[1] = 7513801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7513801"] = {},
    ["7513802"] = {
        npcs = {
            {
                id = 21460,
                alias = "Npc21460",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10172:-109.248,1237.634,10037.270]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7513801"] = {
        npcs = {
            {
                id = 21460,
                alias = "Npc21460",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10172:-109.248,1237.634,10037.270]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7513802"] = {}
}

main_id = 76075
local tbl = {}
local n = 7607502
local v = 7607503
local n2 = 7607504
tbl[1] = 7607501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7607501"] = {}, ["7607502"] = {}, ["7607503"] = {}, ["7607504"] = {}}

quest_data = {
    ["7607501"] = {},
    ["7607502"] = {
        npcs = {
            {
                id = 22298,
                alias = "Npc22298",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14374:5764.125,204.228,10370.060]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7607503"] = {},
    ["7607504"] = {
        npcs = {
            {
                id = 22298,
                alias = "Npc22298",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14374:5764.125,204.228,10370.060]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

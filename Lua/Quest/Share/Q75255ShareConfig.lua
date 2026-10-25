main_id = 75255
local tbl = {}
local n = 7525503
tbl[1] = 7525501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7525501"] = {}, ["7525503"] = {}}

quest_data = {
    ["7525501"] = {
        npcs = {
            {
                id = 6551,
                alias = "Npc6551",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12953:810.709,206.728,14390.830,0.000,90.729,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7525503"] = {
        npcs = {
            {
                id = 6551,
                alias = "Npc6551",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12953:810.709,206.728,14390.830,0.000,90.729,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

main_id = 71505
local tbl = {}
local n = 7150501
local v = 7150502
tbl[1] = 7150503
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7150501"] = {}, ["7150502"] = {}, ["7150503"] = {}}

quest_data = {
    ["7150501"] = {
        npcs = {
            {
                id = 30181,
                alias = "Npc30181",
                script = "Actor/Npc/TempNPC",
                pos = "Q7150501",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7150502"] = {},
    ["7150503"] = {}
}

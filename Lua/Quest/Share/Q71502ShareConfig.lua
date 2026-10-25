main_id = 71502
local tbl = {}
local n = 7150201
local v = 7150202
tbl[1] = 7150203
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7150201"] = {}, ["7150202"] = {}, ["7150203"] = {}}

quest_data = {
    ["7150201"] = {
        npcs = {
            {
                id = 30181,
                alias = "Npc30181",
                script = "Actor/Npc/TempNPC",
                pos = "Q7150201",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7150202"] = {},
    ["7150203"] = {}
}

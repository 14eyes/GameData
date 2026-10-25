main_id = 40154
local tbl = {}
local n = 4015401
local v = 4015402
tbl[1] = 4015403
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4015401"] = {}, ["4015402"] = {}, ["4015403"] = {}}

quest_data = {
    ["4015401"] = {},
    ["4015402"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "[3_300300735:2529.301,204.921,-1126.802,0.000,221.111,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4015403"] = {}
}

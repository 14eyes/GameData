main_id = 77654
local tbl = {}
local n = 7765403
local v = 7765401
local n2 = 7765404
local n3 = 7765405
local n4 = 7765406
tbl[1] = 7765402
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7765401"] = {},
    ["7765402"] = {},
    ["7765403"] = {},
    ["7765404"] = {},
    ["7765405"] = {},
    ["7765406"] = {}
}

quest_data = {
    ["7765401"] = {},
    ["7765402"] = {},
    ["7765403"] = {
        npcs = {
            {
                id = 7580,
                alias = "Npc7580",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370500029:7907.056,164.100,8032.879,0.000,153.711,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7765404"] = {},
    ["7765405"] = {},
    ["7765406"] = {}
}

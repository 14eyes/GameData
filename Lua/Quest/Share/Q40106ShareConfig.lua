main_id = 40106
local tbl = {}
local n = 4010603
local v = 4010604
local n2 = 4010606
local n3 = 4010602
local n4 = 4010605
tbl[1] = 4010601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4010601"] = {}, ["4010603"] = {}, ["4010604"] = {}, ["4010606"] = {}}

quest_data = {
    ["4010601"] = {
        npcs = {
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010206_N1064",
                scene_id = 1079,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4010602"] = {},
    ["4010603"] = {},
    ["4010604"] = {},
    ["4010605"] = {},
    ["4010606"] = {}
}

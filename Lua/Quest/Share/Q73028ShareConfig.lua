main_id = 73028
local tbl = {}
local n = 7302804
local v = 7302802
local n2 = 7302805
local n3 = 7302803
local n4 = 7302806
tbl[1] = 7302801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7302801"] = {}, ["7302802"] = {}, ["7302803"] = {}, ["7302806"] = {}}

quest_data = {
    ["7302801"] = {},
    ["7302802"] = {},
    ["7302803"] = {
        npcs = {
            {
                id = 20645,
                alias = "Npc20645",
                script = "Actor/Npc/TempNPC",
                pos = "WQL1_AREAGEAR_A_POS",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302804"] = {},
    ["7302805"] = {},
    ["7302806"] = {}
}

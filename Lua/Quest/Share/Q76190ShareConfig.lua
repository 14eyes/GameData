main_id = 76190
local tbl = {}
local n = 7619002
local v = 7619003
local n2 = 7619004
local n3 = 7619005
tbl[1] = 7619001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7619001"] = {}, ["7619002"] = {}}

quest_data = {
    ["7619001"] = {},
    ["7619002"] = {
        npcs = {
            {
                id = 16562,
                alias = "Npc16562",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15796:5721.692,261.570,9657.868]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7619003"] = {},
    ["7619004"] = {},
    ["7619005"] = {}
}

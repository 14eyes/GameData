main_id = 40197
local tbl = {}
local n = 4019706
local v = 4019702
local n2 = 4019703
local n3 = 4019704
local n4 = 4019705
tbl[1] = 4019701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121237,121230,121238,121236"}}}}
rewind_data = {["4019701"] = {}, ["4019706"] = {}}

quest_data = {
    ["4019701"] = {},
    ["4019702"] = {},
    ["4019703"] = {},
    ["4019704"] = {},
    ["4019705"] = {},
    ["4019706"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200212:3739.872,442.806,3932.597,0.000,340.008,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

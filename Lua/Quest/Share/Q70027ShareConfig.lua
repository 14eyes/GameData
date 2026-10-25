main_id = 70027
local tbl = {}
local n = 7002702
local v = 7002703
tbl[1] = 7002701
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101582"}, {"101593"}, {"101594"}, {"101595"}}}
}

rewind_data = {["7002701"] = {}, ["7002702"] = {}, ["7002703"] = {}}
quest_data = {["7002701"] = {}, ["7002702"] = {}, ["7002703"] = {}}

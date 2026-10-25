main_id = 40000
local tbl = {}
local n = 4000002
local v = 4000003
tbl[1] = 4000001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4000002"] = {}, ["4000003"] = {}}
quest_data = {["4000001"] = {}, ["4000002"] = {}, ["4000003"] = {}}

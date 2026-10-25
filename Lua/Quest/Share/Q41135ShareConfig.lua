main_id = 41135
local tbl = {}
local n = 4113502
local v = 4113503
local n2 = 4113504
local n3 = 4113505
local n4 = 4113506
local n5 = 4113507
tbl[1] = 4113501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133001917"}, {"133001918"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100686"}}
    }
}

rewind_data = {
    ["4113502"] = {},
    ["4113503"] = {},
    ["4113504"] = {},
    ["4113505"] = {},
    ["4113506"] = {},
    ["4113507"] = {}
}

quest_data = {
    ["4113501"] = {},
    ["4113502"] = {},
    ["4113503"] = {},
    ["4113504"] = {},
    ["4113505"] = {},
    ["4113506"] = {},
    ["4113507"] = {}
}

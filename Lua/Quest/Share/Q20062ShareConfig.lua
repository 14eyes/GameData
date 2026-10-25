main_id = 20062
local tbl = {}
local n = 2006202
local v = 2006203
local n2 = 2006204
local n3 = 2006205
local n4 = 2006206
tbl[1] = 2006201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}
rewind_data["2006201"] = {}

rewind_data["2006202"] = {
    gadgets = {
        {id = 70300111, pos = "", alias = "Summon01", scene_id = 3, room_id = 0},
        {id = 70300113, pos = "", alias = "Summon02", scene_id = 3, room_id = 0}
    }
}

rewind_data["2006203"] = {
    gadgets = {
        {id = 70300111, pos = "", alias = "Summon01", scene_id = 3, room_id = 0},
        {id = 70300113, pos = "", alias = "Summon02", scene_id = 3, room_id = 0}
    }
}

rewind_data["2006204"] = {
    gadgets = {
        {id = 70300111, pos = "", alias = "Summon01", scene_id = 3, room_id = 0},
        {id = 70300113, pos = "", alias = "Summon02", scene_id = 3, room_id = 0}
    }
}

rewind_data["2006205"] = {
    gadgets = {
        {id = 70300111, pos = "", alias = "Summon01", scene_id = 3, room_id = 0},
        {id = 70300113, pos = "", alias = "Summon02", scene_id = 3, room_id = 0}
    }
}

rewind_data["2006206"] = {
    gadgets = {
        {id = 70300111, pos = "", alias = "Summon01", scene_id = 3, room_id = 0},
        {id = 70300113, pos = "", alias = "Summon02", scene_id = 3, room_id = 0}
    }
}

quest_data = {}

quest_data["2006201"] = {
    gadgets = {
        {id = 70300111, pos = "", alias = "Summon01", scene_id = 3, room_id = 0},
        {id = 70300113, pos = "", alias = "Summon02", scene_id = 3, room_id = 0}
    }
}

quest_data["2006202"] = {
    gadgets = {
        {id = 70300111, pos = "", alias = "Summon01", scene_id = 3, room_id = 0},
        {id = 70300113, pos = "", alias = "Summon02", scene_id = 3, room_id = 0}
    }
}

quest_data["2006203"] = {
    gadgets = {
        {id = 70300111, pos = "", alias = "Summon01", scene_id = 3, room_id = 0},
        {id = 70300113, pos = "", alias = "Summon02", scene_id = 3, room_id = 0}
    }
}

quest_data["2006204"] = {
    gadgets = {
        {id = 70300111, pos = "", alias = "Summon01", scene_id = 3, room_id = 0},
        {id = 70300113, pos = "", alias = "Summon02", scene_id = 3, room_id = 0}
    }
}

quest_data["2006205"] = {
    gadgets = {
        {id = 70300111, pos = "", alias = "Summon01", scene_id = 3, room_id = 0},
        {id = 70300113, pos = "", alias = "Summon02", scene_id = 3, room_id = 0}
    }
}

quest_data["2006206"] = {
    gadgets = {
        {id = 70300111, pos = "", alias = "Summon01", scene_id = 3, room_id = 0},
        {id = 70300113, pos = "", alias = "Summon02", scene_id = 3, room_id = 0}
    }
}

local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133004221,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133004278,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl6 = {}
local str3 = "133004221,1"
tbl6[1] = "3"
tbl6[2] = str3
local tbl7 = {}
local str4 = "133004278,1"
tbl7[1] = "3"
tbl7[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl7
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
server2.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100365"}}
tbl5.SERVER = server2
cancel_action = tbl5

main_id = 20012
local tbl = {}
local n = 2001202
local v = 2001203
local n2 = 2001204
tbl[1] = 2001201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["2001204"] = {
    npcs = {
        {id = 157001, alias = "Npc157001", script = "Actor/Npc/TempNPC", pos = "Event_20502", scene_id = 3}
    }
}

rewind_data["2001201"] = {
    npcs = {
        {id = 157001, alias = "Npc157001", script = "Actor/Npc/TempNPC", pos = "Event_20502", scene_id = 3}
    }
}

rewind_data["2001202"] = {}
rewind_data["2001203"] = {}
quest_data = {}

quest_data["2001204"] = {
    npcs = {
        {
            alias = "Npc157001",
            script = "Actor/Npc/TempNPC",
            id = 157001,
            pos = "Event_20502",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2001201"] = {
    npcs = {
        {
            alias = "Npc157001",
            script = "Actor/Npc/TempNPC",
            id = 157001,
            pos = "Event_20502",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2001202"] = {
    npcs = {
        {
            alias = "Npc157001",
            script = "Actor/Npc/TempNPC",
            id = 157001,
            pos = "Event_20502",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2001203"] = {
    npcs = {
        {
            alias = "Npc157001",
            script = "Actor/Npc/TempNPC",
            id = 157001,
            pos = "Event_20502",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133002272,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133002133,1"
tbl4[1] = "3"
tbl4[2] = str2
local tbl5 = {}
local str3 = "133002243,1"
tbl5[1] = "3"
tbl5[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
qUEST_EXEC_REFRESH_GROUP_SUITE[3] = tbl5
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

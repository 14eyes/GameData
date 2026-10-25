main_id = 20013
local tbl = {}
local n = 2001302
local v = 2001303
local n2 = 2001304
tbl[1] = 2001301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["2001304"] = {
    npcs = {
        {id = 141301, alias = "Npc141301", script = "Actor/Npc/TempNPC", pos = "Event_20503", scene_id = 3}
    }
}

rewind_data["2001301"] = {
    npcs = {
        {id = 141301, alias = "Npc141301", script = "Actor/Npc/TempNPC", pos = "Event_20503", scene_id = 3}
    }
}

rewind_data["2001302"] = {}
rewind_data["2001303"] = {}
quest_data = {}

quest_data["2001304"] = {
    npcs = {
        {
            alias = "Npc141301",
            script = "Actor/Npc/TempNPC",
            id = 141301,
            pos = "Event_20503",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2001303"] = {
    npcs = {
        {
            alias = "Npc141301",
            script = "Actor/Npc/TempNPC",
            id = 141301,
            pos = "Event_20503",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2001302"] = {
    npcs = {
        {
            alias = "Npc141301",
            script = "Actor/Npc/TempNPC",
            id = 141301,
            pos = "Event_20503",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2001301"] = {
    npcs = {
        {
            alias = "Npc141301",
            script = "Actor/Npc/TempNPC",
            id = 141301,
            pos = "Event_20503",
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
local str = "133002273,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133002250,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

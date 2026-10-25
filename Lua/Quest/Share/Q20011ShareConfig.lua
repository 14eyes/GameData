main_id = 20011
local tbl = {}
local n = 2001102
local v = 2001103
local n2 = 2001104
tbl[1] = 2001101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["2001104"] = {
    npcs = {
        {id = 140801, alias = "Npc140801", script = "Actor/Npc/TempNPC", pos = "Event_20501", scene_id = 3}
    }
}

rewind_data["2001101"] = {
    npcs = {
        {id = 140801, alias = "Npc140801", script = "Actor/Npc/TempNPC", pos = "Event_20501", scene_id = 3}
    }
}

rewind_data["2001102"] = {
    npcs = {
        {id = 140801, alias = "Npc140801", script = "Actor/Npc/TempNPC", pos = "Event_20501", scene_id = 3}
    }
}

rewind_data["2001103"] = {
    npcs = {
        {id = 140801, alias = "Npc140801", script = "Actor/Npc/TempNPC", pos = "Event_20501", scene_id = 3}
    }
}

quest_data = {}

quest_data["2001104"] = {
    npcs = {
        {
            alias = "Npc140801",
            script = "Actor/Npc/TempNPC",
            id = 140801,
            pos = "Event_20501",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2001101"] = {
    npcs = {
        {
            alias = "Npc140801",
            script = "Actor/Npc/TempNPC",
            id = 140801,
            pos = "Event_20501",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2001102"] = {
    npcs = {
        {
            alias = "Npc140801",
            script = "Actor/Npc/TempNPC",
            id = 140801,
            pos = "Event_20501",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2001103"] = {
    npcs = {
        {
            alias = "Npc140801",
            script = "Actor/Npc/TempNPC",
            id = 140801,
            pos = "Event_20501",
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
local str = "133003483,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133002242,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

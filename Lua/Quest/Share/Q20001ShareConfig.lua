main_id = 20001
local tbl = {}
local n = 2000102
local v = 2000103
local n2 = 2000104
tbl[1] = 2000101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["2000104"] = {
    npcs = {
        {id = 140301, alias = "Npc140301", script = "Actor/Npc/TempNPC", pos = "EventTest01", scene_id = 3}
    }
}

rewind_data["2000101"] = {
    npcs = {
        {id = 140301, alias = "Npc140301", script = "Actor/Npc/TempNPC", pos = "EventTest01", scene_id = 3}
    }
}

rewind_data["2000102"] = {
    npcs = {
        {id = 140301, alias = "Npc140301", script = "Actor/Npc/TempNPC", pos = "EventTest01", scene_id = 3}
    }
}

rewind_data["2000103"] = {
    npcs = {
        {id = 140301, alias = "Npc140301", script = "Actor/Npc/TempNPC", pos = "EventTest01", scene_id = 3}
    }
}

quest_data = {}

quest_data["2000104"] = {
    npcs = {
        {
            alias = "Npc140301",
            script = "Actor/Npc/TempNPC",
            id = 140301,
            pos = "EventTest01",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2000101"] = {
    npcs = {
        {
            alias = "Npc140301",
            script = "Actor/Npc/TempNPC",
            id = 140301,
            pos = "EventTest01",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2000102"] = {
    npcs = {
        {
            alias = "Npc140301",
            script = "Actor/Npc/TempNPC",
            id = 140301,
            pos = "EventTest01",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2000103"] = {
    npcs = {
        {
            alias = "Npc140301",
            script = "Actor/Npc/TempNPC",
            id = 140301,
            pos = "EventTest01",
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
local str = "133003469,2"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

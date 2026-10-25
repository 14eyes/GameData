main_id = 20008
local tbl = {}
local n = 2000802
local v = 2000803
local n2 = 2000804
local n3 = 2000805
local n4 = 2000806
tbl[1] = 2000801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}

rewind_data["2000801"] = {
    npcs = {
        {id = 156901, alias = "Npc156901", script = "Actor/Npc/TempNPC", pos = "Event_20200", scene_id = 3}
    }
}

rewind_data["2000802"] = {}

rewind_data["2000803"] = {
    npcs = {
        {id = 156901, alias = "Npc156901", script = "Actor/Npc/TempNPC", pos = "Event_20200", scene_id = 3}
    }
}

rewind_data["2000804"] = {}

rewind_data["2000805"] = {
    npcs = {
        {id = 156901, alias = "Npc156901", script = "Actor/Npc/TempNPC", pos = "Event_20200", scene_id = 3}
    }
}

rewind_data["2000806"] = {}
quest_data = {}

quest_data["2000801"] = {
    npcs = {
        {
            alias = "Npc156901",
            script = "Actor/Npc/TempNPC",
            id = 156901,
            pos = "Event_20200",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2000802"] = {
    npcs = {
        {
            alias = "Npc156901",
            script = "Actor/Npc/TempNPC",
            id = 156901,
            pos = "Event_20200",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2000803"] = {
    npcs = {
        {
            alias = "Npc156901",
            script = "Actor/Npc/TempNPC",
            id = 156901,
            pos = "Event_20200",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2000804"] = {
    npcs = {
        {
            alias = "Npc156901",
            script = "Actor/Npc/TempNPC",
            id = 156901,
            pos = "Event_20200",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2000805"] = {
    npcs = {
        {
            alias = "Npc156901",
            script = "Actor/Npc/TempNPC",
            id = 156901,
            pos = "Event_20200",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2000806"] = {
    npcs = {
        {
            alias = "Npc156901",
            script = "Actor/Npc/TempNPC",
            id = 156901,
            pos = "Event_20200",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

finish_action = {}
fail_action = {}
cancel_action = {}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133004260,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133004261,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

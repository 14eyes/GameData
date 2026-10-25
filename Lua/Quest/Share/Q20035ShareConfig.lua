main_id = 20035
local tbl = {}
local n = 2003502
local v = 2003503
local n2 = 2003504
tbl[1] = 2003501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["2003501"] = {
    npcs = {
        {
            id = 155101,
            alias = "Npc155101",
            script = "Actor/Npc/TempNPC",
            pos = "Q20025NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["2003502"] = {
    npcs = {
        {
            id = 155101,
            alias = "Npc155101",
            script = "Actor/Npc/TempNPC",
            pos = "Q20025NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["2003503"] = {
    npcs = {
        {
            id = 155101,
            alias = "Npc155101",
            script = "Actor/Npc/TempNPC",
            pos = "Q20025NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["2003504"] = {
    npcs = {
        {
            id = 155101,
            alias = "Npc155101",
            script = "Actor/Npc/TempNPC",
            pos = "Q20025NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["2003501"] = {
    npcs = {
        {
            id = 155101,
            alias = "Npc155101",
            script = "Actor/Npc/TempNPC",
            pos = "Q20025NPC",
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
local str = "133002284,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100301"}}
tbl2.SERVER = server
cancel_action = tbl2

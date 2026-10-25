main_id = 20025
local tbl = {}
local n = 2002502
local v = 2002503
local n2 = 2002504
tbl[1] = 2002501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["2002501"] = {
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

rewind_data["2002502"] = {
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

rewind_data["2002503"] = {
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

rewind_data["2002504"] = {
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

quest_data["2002501"] = {
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
local str = "133002286,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100302"}}
tbl2.SERVER = server
cancel_action = tbl2

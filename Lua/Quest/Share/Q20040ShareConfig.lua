main_id = 20040
local tbl = {}
local n = 2004002
local v = 2004003
local n2 = 2004004
local n3 = 2004005
local n4 = 2004006
local n5 = 2004007
tbl[1] = 2004001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
rewind_data = {}

rewind_data["2004001"] = {
    npcs = {
        {id = 158101, alias = "Npc158101", script = "Actor/Npc/TempNPC", pos = "Event_20600", scene_id = 3}
    }
}

rewind_data["2004002"] = {}

rewind_data["2004003"] = {
    npcs = {
        {id = 158101, alias = "Npc158101", script = "Actor/Npc/TempNPC", pos = "Event_20600", scene_id = 3}
    }
}

rewind_data["2004004"] = {}
rewind_data["2004005"] = {}
rewind_data["2004006"] = {}

rewind_data["2004007"] = {
    npcs = {
        {
            id = 158101,
            alias = "Npc158101",
            script = "Actor/Npc/TempNPC",
            pos = "Event_20600_07",
            scene_id = 3
        }
    }
}

quest_data = {}

quest_data["2004001"] = {
    npcs = {
        {
            alias = "Npc158101",
            script = "Actor/Npc/TempNPC",
            id = 158101,
            pos = "Event_20600",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Event_20600",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data["2004003"] = {
    npcs = {
        {
            alias = "Npc158101",
            script = "Actor/Npc/TempNPC",
            id = 158101,
            pos = "Event_20600",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2004007"] = {
    npcs = {
        {
            alias = "Npc158101",
            script = "Actor/Npc/TempNPC",
            id = 158101,
            pos = "Event_20600_07",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133003305,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

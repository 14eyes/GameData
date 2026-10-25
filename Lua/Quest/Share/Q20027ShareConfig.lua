main_id = 20027
local tbl = {}
local n = 2002702
local v = 2002703
local n2 = 2002704
local n3 = 2002705
local n4 = 2002706
tbl[1] = 2002701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}

rewind_data["2002701"] = {
    npcs = {
        {id = 153301, alias = "Npc153301", script = "Actor/Npc/TempNPC", pos = "Event_20201", scene_id = 3}
    }
}

rewind_data["2002702"] = {}

rewind_data["2002703"] = {
    npcs = {
        {id = 153301, alias = "Npc153301", script = "Actor/Npc/TempNPC", pos = "Event_20201", scene_id = 3}
    }
}

rewind_data["2002704"] = {}

rewind_data["2002705"] = {
    npcs = {
        {id = 153301, alias = "Npc153301", script = "Actor/Npc/TempNPC", pos = "Event_20201", scene_id = 3}
    }
}

rewind_data["2002706"] = {}
quest_data = {}

quest_data["2002701"] = {
    npcs = {
        {
            alias = "Npc153301",
            script = "Actor/Npc/TempNPC",
            id = 153301,
            pos = "Event_20201",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2002702"] = {
    npcs = {
        {
            alias = "Npc153301",
            script = "Actor/Npc/TempNPC",
            id = 153301,
            pos = "Event_20201",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2002703"] = {
    npcs = {
        {
            alias = "Npc153301",
            script = "Actor/Npc/TempNPC",
            id = 153301,
            pos = "Event_20201",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2002704"] = {
    npcs = {
        {
            alias = "Npc153301",
            script = "Actor/Npc/TempNPC",
            id = 153301,
            pos = "Event_20201",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2002705"] = {
    npcs = {
        {
            alias = "Npc153301",
            script = "Actor/Npc/TempNPC",
            id = 153301,
            pos = "Event_20201",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["2002706"] = {
    npcs = {
        {
            alias = "Npc153301",
            script = "Actor/Npc/TempNPC",
            id = 153301,
            pos = "Event_20201",
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
local str = "133002281,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133002282,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

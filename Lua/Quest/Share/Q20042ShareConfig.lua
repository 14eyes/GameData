main_id = 20042
local tbl = {}
local n = 2004202
local v = 2004203
local n2 = 2004204
local n3 = 2004205
tbl[1] = 2004201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
rewind_data = {}

rewind_data["2004201"] = {
    npcs = {
        {
            id = 160201,
            alias = "Npc160201",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC2Born",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC1Born",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        }
    }
}

rewind_data["2004202"] = {
    npcs = {
        {
            id = 160201,
            alias = "Npc160201",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC2Born",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

rewind_data["2004203"] = {
    npcs = {
        {
            id = 160201,
            alias = "Npc160201",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC2Born",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

rewind_data["2004204"] = {
    npcs = {
        {
            id = 160201,
            alias = "Npc160201",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC2Born",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

rewind_data["2004205"] = {
    npcs = {
        {
            id = 160201,
            alias = "Npc160201",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC2Born",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data = {}

quest_data["2004201"] = {
    npcs = {
        {
            id = 160201,
            alias = "Npc160201",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC2Born",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC1Born",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        }
    }
}

quest_data["2004202"] = {
    npcs = {
        {
            id = 160201,
            alias = "Npc160201",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC2Born",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data["2004203"] = {
    npcs = {
        {
            id = 160201,
            alias = "Npc160201",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC2Born",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data["2004204"] = {
    npcs = {
        {
            id = 160201,
            alias = "Npc160201",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC2Born",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data["2004205"] = {
    npcs = {
        {
            id = 160201,
            alias = "Npc160201",
            script = "Actor/Npc/TempNPC",
            pos = "Q20042NPC2Born",
            scene_id = 3,
            room_id = 0,
            data_index = 1
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
local str = "133004271,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133004911,2"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl6 = {}
local str3 = "133004271,1"
tbl6[1] = "3"
tbl6[2] = str3
local tbl7 = {}
local str4 = "133004911,2"
tbl7[1] = "3"
tbl7[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl7
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl5.SERVER = server2
cancel_action = tbl5

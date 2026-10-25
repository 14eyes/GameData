main_id = 20049
local tbl = {}
local n = 2004902
local v = 2004903
local n2 = 2004904
local n3 = 2004905
tbl[1] = 2004901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
rewind_data = {}

rewind_data["2004901"] = {
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event21900NPCSpawn1",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        }
    }
}

rewind_data["2004902"] = {
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event21900NPCSpawn1",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        },
        {
            id = 146301,
            alias = "Npc146301",
            script = "Actor/Npc/TempNPC",
            pos = "Event21900NPCSpawn2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["2004903"] = {
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event21900NPCSpawn1",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        },
        {
            id = 146301,
            alias = "Npc146301",
            script = "Actor/Npc/TempNPC",
            pos = "Event21900NPCSpawn2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["2004904"] = {
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event21900NPCSpawn1",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        },
        {
            id = 146301,
            alias = "Npc146301",
            script = "Actor/Npc/TempNPC",
            pos = "Event21900NPCSpawn2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["2004905"] = {
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event21900NPCSpawn1",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        },
        {
            id = 146301,
            alias = "Npc146301",
            script = "Actor/Npc/TempNPC",
            pos = "Event21900NPCSpawn2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["2004901"] = {
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event21900NPCSpawn1",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data["2004902"] = {
    npcs = {
        {
            id = 146301,
            alias = "Npc146301",
            script = "Actor/Npc/TempNPC",
            pos = "Event21900NPCSpawn2",
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
local str = "133004912,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {}
tbl2.SERVER = server
cancel_action = tbl2

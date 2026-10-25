main_id = 22112
local tbl = {}
local n = 2211202
local v = 2211203
local n2 = 2211204
local n3 = 2211205
tbl[1] = 2211201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl

rewind_data = {
    ["2211201"] = {
        npcs = {
            {
                id = 220201,
                alias = "Npc220201",
                script = "Actor/Npc/TempNPC",
                pos = "Event_26600_01",
                scene_id = 3
            }
        }
    },
    ["2211202"] = {
        npcs = {
            {
                id = 220201,
                alias = "Npc220201",
                script = "Actor/Npc/TempNPC",
                pos = "Event_26600_01",
                scene_id = 3
            }
        }
    },
    ["2211203"] = {
        npcs = {
            {
                id = 220201,
                alias = "Npc220201",
                script = "Actor/Npc/TempNPC",
                pos = "Event_26600_01",
                scene_id = 3
            }
        }
    },
    ["2211204"] = {
        npcs = {
            {
                id = 220201,
                alias = "Npc220201",
                script = "Actor/Npc/TempNPC",
                pos = "Event_26600_01",
                scene_id = 3
            }
        }
    },
    ["2211205"] = {
        npcs = {
            {
                id = 220201,
                alias = "Npc220201",
                script = "Actor/Npc/TempNPC",
                pos = "Event_26600_01",
                scene_id = 3
            }
        }
    }
}

quest_data = {
    ["2211201"] = {
        npcs = {
            {
                id = 220201,
                alias = "Npc220201",
                script = "Actor/Npc/TempNPC",
                pos = "Event_26600_01",
                scene_id = 3
            }
        }
    },
    ["2211202"] = {
        npcs = {
            {
                id = 220201,
                alias = "Npc220201",
                script = "Actor/Npc/TempNPC",
                pos = "Event_26600_01",
                scene_id = 3
            }
        }
    },
    ["2211203"] = {
        npcs = {
            {
                id = 220201,
                alias = "Npc220201",
                script = "Actor/Npc/TempNPC",
                pos = "Event_26600_01",
                scene_id = 3
            }
        }
    },
    ["2211204"] = {
        npcs = {
            {
                id = 220201,
                alias = "Npc220201",
                script = "Actor/Npc/TempNPC",
                pos = "Event_26600_01",
                scene_id = 3
            }
        }
    },
    ["2211205"] = {
        npcs = {
            {
                id = 220201,
                alias = "Npc220201",
                script = "Actor/Npc/TempNPC",
                pos = "Event_26600_01",
                scene_id = 3
            }
        }
    }
}

finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133104906,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133104907,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100306"}}
tbl2.SERVER = server
cancel_action = tbl2

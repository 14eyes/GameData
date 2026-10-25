main_id = 20521
local tbl = {}
local n = 2052102
local v = 2052103
tbl[1] = 2052101
tbl[2] = n
tbl[3] = v
sub_ids = tbl

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133002937"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100710"}}
    }
}

fail_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133002937"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100710"}}
    }
}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133002937"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100710"}}
    }
}

rewind_data = {["2052101"] = {}, ["2052103"] = {}}

quest_data = {
    ["2052101"] = {
        npcs = {
            {
                id = 166501,
                alias = "Npc166501",
                script = "Actor/Npc/TempNPC",
                pos = "Q20521target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 166501,
                alias = "Npc166501",
                script = "Actor/Npc/TempNPC",
                pos = "Q20521target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2052102"] = {
        npcs = {
            {
                id = 166501,
                alias = "Npc166501",
                script = "Actor/Npc/TempNPC",
                pos = "Q20521target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 166501,
                alias = "Npc166501",
                script = "Actor/Npc/TempNPC",
                pos = "Q20521target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2052103"] = {
        npcs = {
            {
                id = 166501,
                alias = "Npc166501",
                script = "Actor/Npc/TempNPC",
                pos = "Q20521target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 166501,
                alias = "Npc166501",
                script = "Actor/Npc/TempNPC",
                pos = "Q20521target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

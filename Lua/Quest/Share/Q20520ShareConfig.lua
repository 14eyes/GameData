main_id = 20520
local tbl = {}
local n = 2052002
local v = 2052003
local n2 = 2052004
local n3 = 2052005
local n4 = 2052006
local n5 = 2052007
local n6 = 2052009
local n7 = 2052010
local n8 = 2052011
local n9 = 2052008
tbl[1] = 2052001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
sub_ids = tbl

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133001924"}, {"133002930"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100705"}}
    }
}

fail_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133001924"}, {"133002930"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100705"}}
    }
}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133001924"}, {"133002930"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100705"}}
    }
}

rewind_data = {
    ["2052001"] = {},
    ["2052004"] = {
        npcs = {
            {
                id = 167201,
                alias = "Npc167201",
                script = "Actor/Npc/TempNPC",
                pos = "Q20520tommy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2052005"] = {
        npcs = {
            {
                id = 167201,
                alias = "Npc167201",
                script = "Actor/Npc/TempNPC",
                pos = "Q20520tommy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2052006"] = {
        npcs = {
            {
                id = 167201,
                alias = "Npc167201",
                script = "Actor/Npc/TempNPC",
                pos = "Q20520tommy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2052007"] = {
        npcs = {
            {
                id = 167201,
                alias = "Npc167201",
                script = "Actor/Npc/TempNPC",
                pos = "Q20520tommy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2052009"] = {},
    ["2052010"] = {
        npcs = {
            {
                id = 167201,
                alias = "Npc167201",
                script = "Actor/Npc/TempNPC",
                pos = "Q20521target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2052001"] = {
        npcs = {
            {
                id = 167201,
                alias = "Npc167201",
                script = "Actor/Npc/TempNPC",
                pos = "Q20520tommy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2052002"] = {},
    ["2052003"] = {},
    ["2052004"] = {},
    ["2052005"] = {},
    ["2052006"] = {},
    ["2052007"] = {
        npcs = {
            {
                id = 167201,
                alias = "Npc167201",
                script = "Actor/Npc/TempNPC",
                pos = "Q20520tommy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2052008"] = {},
    ["2052009"] = {
        npcs = {
            {
                id = 167201,
                alias = "Npc167201",
                script = "Actor/Npc/TempNPC",
                pos = "Q20521target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2052010"] = {
        npcs = {
            {
                id = 167201,
                alias = "Npc167201",
                script = "Actor/Npc/TempNPC",
                pos = "Q20521target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2052011"] = {}
}

main_id = 1022
local tbl = {}
local n = 102202
local v = 102203
local n2 = 102204
local n3 = 102205
local n4 = 102206
local n5 = 102207
local n6 = 102208
tbl[1] = 102201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}

rewind_data["102202"] = {
    npcs = {
        {
            id = 10261,
            alias = "Npc10261",
            script = "Actor/Npc/TempNPC",
            pos = "Q102201Check",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["102201"] = {
    npcs = {
        {
            id = 10261,
            alias = "Npc10261",
            script = "Actor/Npc/TempNPC",
            pos = "Q102201Check",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102202"] = {
    npcs = {
        {
            id = 10261,
            alias = "Npc10261",
            script = "Actor/Npc/TempNPC",
            pos = "Q102201Check",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102203"] = {
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q102203ZL",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102204"] = {
    npcs = {
        {
            id = 10273,
            alias = "Npc10273",
            script = "Actor/Npc/TempNPC",
            pos = "Q102204Lily",
            scene_id = 3,
            data_index = 0
        }
    },
    gadgets = {
        {
            id = 71700108,
            pos = "Q102204Lily",
            alias = "Q102204Lily",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id = 0
        },
        {
            id = 71700108,
            pos = "Q102204Lily2",
            alias = "Q102204Lily2",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id = 0
        },
        {
            id = 71700108,
            pos = "Q102204Lily3",
            alias = "Q102204Lily3",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id = 0
        }
    }
}

quest_data["102206"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102206Paimon",
            scene_id = 3,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102206born"}}
}

quest_data["102207"] = {
    npcs = {
        {
            id = 10272,
            alias = "Npc10272",
            script = "Actor/Npc/TempNPC",
            pos = "Q102207YRZ",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102208"] = {
    npcs = {
        {
            id = 10272,
            alias = "Npc10272",
            script = "Actor/Npc/TempNPC",
            pos = "Q102207YRZ",
            scene_id = 3,
            data_index = 0
        }
    }
}

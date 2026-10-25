main_id = 1014
local tbl = {}
local n = 101402
local v = 101403
local n2 = 101404
local n3 = 101405
local n4 = 101406
local n5 = 101407
local n6 = 101408
tbl[1] = 101401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}

rewind_data["101401"] = {
    npcs = {
        {
            id = 209301,
            alias = "Npc209301",
            script = "Actor/Npc/TempNPC",
            pos = "Q101401Pll",
            scene_id = 3,
            data_index = 0
        }
    }
}

rewind_data["101406"] = {
    npcs = {
        {
            id = 10245,
            alias = "Npc10245",
            script = "Actor/Npc/TempNPC",
            pos = "Q101402Pot",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 209301,
            alias = "Npc209301",
            script = "Actor/Npc/TempNPC",
            pos = "Q101401Pll",
            scene_id = 3,
            data_index = 0
        }
    }
}

rewind_data["101403"] = {
    npcs = {
        {
            id = 209301,
            alias = "Npc209301",
            script = "Actor/Npc/TempNPC",
            pos = "Q101401Pll",
            scene_id = 3,
            data_index = 0
        }
    }
}

rewind_data["101404"] = {
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101404Stack1",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["101401"] = {
    npcs = {
        {
            id = 209301,
            alias = "Npc209301",
            script = "Actor/Npc/TempNPC",
            pos = "Q101401Pll",
            scene_id = 3,
            data_index = 0
        }
    },
    gadgets = {
        {
            id = 71700108,
            pos = "Q101401Lily1",
            alias = "Q101401Lily1",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id = 0
        },
        {
            id = 71700108,
            pos = "Q101401Lily2",
            alias = "Q101401Lily2",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id = 0
        }
    }
}

quest_data["101406"] = {
    npcs = {
        {
            id = 10245,
            alias = "Npc10245",
            script = "Actor/Npc/TempNPC",
            pos = "Q101402Pot",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["101403"] = {
    npcs = {
        {
            id = 209301,
            alias = "Npc209301",
            script = "Actor/Npc/TempNPC",
            pos = "Q101401Pll",
            scene_id = 3,
            data_index = 0
        }
    },
    gadgets = {
        {
            id = 71700108,
            pos = "Q101401Lily1",
            alias = "Q101401Lily1",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id = 0
        },
        {
            id = 71700108,
            pos = "Q101401Lily2",
            alias = "Q101401Lily2",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id = 0
        }
    }
}

quest_data["101404"] = {
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101404Stack1",
            scene_id = 3,
            data_index = 0
        }
    }
}

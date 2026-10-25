main_id = 1021
local tbl = {}
local n = 102102
local v = 102103
local n2 = 102104
local n3 = 102105
local n4 = 102106
local n5 = 102107
local n6 = 102108
tbl[1] = 102101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}

rewind_data["102102"] = {
    npcs = {
        {
            id = 10287,
            alias = "Npc10287",
            script = "Actor/Npc/TempNPC",
            pos = "Q102101Guild",
            scene_id = 3,
            data_index = 0
        }
    }
}

rewind_data["102107"] = {
    npcs = {
        {
            id = 10287,
            alias = "Npc10287",
            script = "Actor/Npc/TempNPC",
            pos = "Q102101Guild",
            scene_id = 3,
            data_index = 0
        }
    }
}

rewind_data["102108"] = {
    npcs = {
        {
            id = 10287,
            alias = "Npc10287",
            script = "Actor/Npc/TempNPC",
            pos = "Q102101Guild",
            scene_id = 3,
            data_index = 0
        }
    }
}

rewind_data["102113"] = {
    npcs = {
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102104Ningguang",
            scene_id = 3,
            data_index = 0
        }
    }
}

rewind_data["102112"] = {
    npcs = {
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102106Ningguang1",
            scene_id = 1057,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["102101"] = {
    npcs = {
        {
            id = 10287,
            alias = "Npc10287",
            script = "Actor/Npc/TempNPC",
            pos = "Q102101Guild",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102101paimon",
            scene_id = 3,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102101born"}}
}

quest_data["102102"] = {
    npcs = {
        {
            id = 10287,
            alias = "Npc10287",
            script = "Actor/Npc/TempNPC",
            pos = "Q102101Guild",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102107"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102108Paimon",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 10287,
            alias = "Npc10287",
            script = "Actor/Npc/TempNPC",
            pos = "Q102101Guild",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102108"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102108Paimon",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 10287,
            alias = "Npc10287",
            script = "Actor/Npc/TempNPC",
            pos = "Q102101Guild",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102110"] = {
    gadgets = {
        {
            id = 70710141,
            pos = "Q102110Flower",
            alias = "Q102110Flower",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id = 0
        }
    }
}

quest_data["102103"] = {
    npcs = {
        {
            id = 10271,
            alias = "Npc10271",
            script = "Actor/Npc/TempNPC",
            pos = "Q102103Transmit",
            scene_id = 3,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102104Born"}}
}

quest_data["102104"] = {
    npcs = {
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102104Ningguang",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102113"] = {
    npcs = {
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102104Ningguang",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102105"] = {
    npcs = {
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102106Ningguang1",
            scene_id = 1057,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data["102106"] = {
    npcs = {
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102106Ningguang1",
            scene_id = 1057,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data["102112"] = {
    npcs = {
        {
            id = 10301,
            alias = "Npc10301",
            script = "Actor/Npc/TempNPC",
            pos = "Q102112Read",
            scene_id = 1057,
            room_id = 1,
            data_index = 0
        }
    }
}

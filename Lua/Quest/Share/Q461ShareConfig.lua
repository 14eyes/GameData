main_id = 461
local tbl = {}
local n = 46101
local v = 46102
local n2 = 46103
local n3 = 46104
local n4 = 46107
tbl[1] = 46100
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}
rewind_data["46102"] = {npcs = {{id = 1004, alias = "Gaia", script = "Actor/Npc/TempNPC", pos = "Q461KaeyaOut"}}}
rewind_data["46103"] = {}
quest_data = {}

quest_data["46101"] = {
    npcs = {
        {
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            id = 1004,
            pos = "Q461KaeyaIn",
            scene_id = 1004,
            room_id = 1,
            data_index = 1
        },
        {
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            id = 1004,
            pos = "Q46102Kaeya",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        }
    }
}

quest_data["46110"] = {
    npcs = {
        {
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            id = 1004,
            pos = "Q46102Kaeya",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["46102"] = {
    npcs = {
        {
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            id = 1004,
            pos = "Q46102Kaeya",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["46103"] = {
    npcs = {
        {
            alias = "Npc1409",
            script = "Actor/Npc/TempNPC",
            id = 1409,
            pos = "Q46104Npc1409",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            alias = "Npc1413",
            script = "Actor/Npc/TempNPC",
            id = 1413,
            pos = "Q46104Npc1413",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        }
    }
}

quest_data["46109"] = {
    npcs = {
        {
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            id = 1004,
            pos = "Q46102Kaeya",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["46104"] = {
    npcs = {
        {
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            id = 1004,
            pos = "Q461KaeyaIn",
            scene_id = 1004,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data["46107"] = {
    npcs = {
        {
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            id = 1004,
            pos = "Q461KaeyaOut2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

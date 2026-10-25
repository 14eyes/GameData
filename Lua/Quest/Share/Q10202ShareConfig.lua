main_id = 10202
local tbl = {}
local n = 1020202
local v = 1020203
local n2 = 1020204
tbl[1] = 1020201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["1020203"] = {
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10202KleeSpawn",
            scene_id = 1004,
            room_id = 100402,
            data_index = 1
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10202QinSpawn",
            scene_id = 1004,
            room_id = 100402,
            data_index = 2
        }
    }
}

quest_data = {}

quest_data["1020201"] = {
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10202KleeSpawn",
            scene_id = 1004,
            room_id = 100402,
            data_index = 1
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10202QinSpawn",
            scene_id = 1004,
            room_id = 100402,
            data_index = 2
        },
        {
            id = 10092,
            alias = "Npc10092",
            script = "Actor/Npc/TempNPC",
            pos = "Q10202DoorSpawn",
            scene_id = 1004,
            room_id = 1,
            data_index = 1
        }
    }
}

quest_data["1020202"] = {
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10202KleeSpawn",
            scene_id = 1004,
            room_id = 100402,
            data_index = 1
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10202QinSpawn",
            scene_id = 1004,
            room_id = 100402,
            data_index = 2
        }
    }
}

quest_data["1020204"] = {
    npcs = {
        {
            id = 10092,
            alias = "Npc10092",
            script = "Actor/Npc/TempNPC",
            pos = "Q10202DoorSpawn",
            scene_id = 1004,
            room_id = 1,
            data_index = 1
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10202KleeSpawn",
            scene_id = 1004,
            room_id = 100402,
            data_index = 2
        }
    }
}

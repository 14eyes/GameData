main_id = 370
local tbl = {}
local n = 37002
local v = 37004
local n2 = 37005
local n3 = 37003
tbl[1] = 37001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
rewind_data = {}

rewind_data["37002"] = {
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q37001Qin",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 1487,
            alias = "Fatuus",
            script = "Actor/Npc/TempNPC",
            pos = "Q37001Fatuus",
            data_index = 0,
            scene_id = 3
        }
    }
}

rewind_data["37004"] = {
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q358Qin",
            scene_id = 1004,
            data_index = 0,
            room_id = 100402
        },
        {
            id = 1007,
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            pos = "Q358Lisa",
            scene_id = 1004,
            data_index = 0,
            room_id = 100402
        }
    }
}

quest_data = {}

quest_data["37001"] = {
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q37001Qin",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 1487,
            alias = "Fatuus",
            script = "Actor/Npc/TempNPC",
            pos = "Q37001Fatuus",
            data_index = 0,
            scene_id = 3
        }
    }
}

quest_data["37005"] = {
    gadgets = {{id = 70300059, pos = "Q37004Tears", alias = "Tears", scene_id = 1004, room_id = 100402}},
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q358Qin",
            scene_id = 1004,
            data_index = 0,
            room_id = 100402
        },
        {
            id = 1007,
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            pos = "Q358Lisa",
            scene_id = 1004,
            data_index = 0,
            room_id = 100402
        }
    }
}

main_id = 373
local tbl = {}
local n = 37302
local v = 37303
local n2 = 37304
tbl[1] = 37301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["37302"] = {
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37301Venti",
            data_index = 0,
            scene_id = 3
        }
    }
}

quest_data = {}

quest_data["37301"] = {
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37301Venti",
            data_index = 0,
            scene_id = 3
        }
    }
}

quest_data["37304"] = {
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37301Venti",
            data_index = 1,
            scene_id = 3
        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q372Venti",
            data_index = 2,
            scene_id = 3
        }
    }
}

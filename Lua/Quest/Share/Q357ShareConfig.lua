main_id = 357
local tbl = {}
local n = 35721
local v = 35722
local n2 = 35723
local n3 = 35724
local n4 = 35725
tbl[1] = 35720
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}

rewind_data["35720"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q356Target2",
            data_index = 0,
            scene_id = 3
        }
    }
}

rewind_data["35721"] = {avatar = {scene_id = 3, pos = "Q356Target2"}}
rewind_data["35725"] = {avatar = {scene_id = 3, pos = "Q35707Player"}}
quest_data = {}

quest_data["35701"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q356Ambor3",
            data_index = 0,
            scene_id = 3
        }
    },
    gadgets = {
        {id = 70300013, pos = "Q356Stone1"},
        {id = 40200020, pos = "Q357Wind1"},
        {id = 40200020, pos = "Q357Wind2"},
        {id = 40200020, pos = "Q357Wind3"},
        {id = 40200020, pos = "Q357Wind4"},
        {id = 40200020, pos = "Q357Wind5"},
        {id = 40200020, pos = "Q357Wind6"},
        {id = 40200020, pos = "Q357Wind7"},
        {id = 70900201, pos = "Q356Target1"}
    }
}

quest_data["35703"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q357Ambor2",
            data_index = 0,
            scene_id = 3
        }
    },
    gadgets = {{id = 70900201, pos = "Q357Ambor2"}}
}

quest_data["35705"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q301Hidden",
            data_index = 0,
            scene_id = 3
        }
    },
    gadgets = {
        {id = 70300013, pos = "Q357Stone1"},
        {id = 70300046, pos = "Q357Stone2"},
        {id = 70900201, pos = "Q357Target1"},
        {id = 70900201, pos = "Q357Target2"}
    }
}

quest_data["35706"] = {gadgets = {}}

quest_data["35711"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q357Ambor3",
            data_index = 0,
            scene_id = 3
        },
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            pos = "Q357Gaia1",
            data_index = 0,
            scene_id = 3
        }
    },
    gadgets = {
        {id = 70300039, pos = "Q357Stone3"},
        {id = 70300047, pos = "Q357Stone3"},
        {id = 70900201, pos = "Q357Target3"}
    }
}

quest_data["35708"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q301Hidden",
            data_index = 0,
            scene_id = 3
        },
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            pos = "Q301Hidden",
            data_index = 0,
            scene_id = 3
        }
    }
}

quest_data["35709"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q358Paimon1",
            data_index = 0,
            scene_id = 3
        }
    }
}

quest_data["35722"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q35707Player"}}}

quest_data["35723"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q357Ambor3",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["35724"] = {
    npcs = {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q358Paimon1",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

main_id = 427
local tbl = {}
local n = 42701
local v = 42702
local n2 = 42703
local n3 = 42704
local n4 = 42705
local n5 = 42706
local n6 = 42707
local n7 = 42708
tbl[1] = 42709
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
rewind_data = {}

rewind_data["42701"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Ambor_FlyBegin",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["42703"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Ambor_FlyBegin",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

rewind_data["42704"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Knight_Roof_Ambor",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

rewind_data["42706"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Knight_Roof_Ambor",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

rewind_data["42707"] = {}

rewind_data["42708"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "42708AmborHidden",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    },
    avatar = {scene_id = 3, pos = "Q42707Player"}
}

quest_data = {}

quest_data["42702"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Knight_Roof_Ambor",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        },
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Ambor_FlyBegin",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    },
    gadgets = {
        {id = 70710005, pos = "Q427Wind1", alias = "Wind1", scene_id = 3, room_id = 0},
        {id = 70690001, pos = "Q427Wind1", alias = "Wind1", scene_id = 3, room_id = 0}
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q375RunStart"}}
}

quest_data["42709"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Ambor_FlyBegin",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        },
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Knight_Roof_Ambor",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

quest_data["42701"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Ambor_FlyBegin",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        },
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Knight_Roof_Ambor",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

quest_data["42703"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Ambor_FlyBegin",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        },
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Knight_Roof_Ambor",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

quest_data["42704"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Knight_Roof_Ambor",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

quest_data["42705"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Knight_Roof_Ambor",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    },
    gadgets = {
        {id = 70710005, pos = "Q427Wind1", alias = "Wind1", scene_id = 3, room_id = 0},
        {id = 70690001, pos = "Q427Wind1", alias = "Wind1", scene_id = 3, room_id = 0}
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Knight_Roof"}}
}

quest_data["42706"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Knight_Roof_Ambor",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

quest_data["42707"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "42708AmborHidden",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

quest_data["42708"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "42708AmborHidden",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        },
        {
            alias = "Npc1483",
            script = "Actor/Npc/TempNPC",
            id = 1483,
            pos = "Q427Soilder2",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

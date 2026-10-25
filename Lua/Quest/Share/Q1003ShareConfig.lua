main_id = 1003
local tbl = {}
local n = 100320
local v = 100302
local n2 = 100303
local n3 = 100319
local n4 = 100304
local n5 = 100305
local n6 = 100306
local n7 = 100307
local n8 = 100308
local n9 = 100309
local n10 = 100310
local n11 = 100321
local n12 = 100311
local n13 = 100312
local n14 = 100313
local n15 = 100314
local n16 = 100315
local n17 = 100316
local n18 = 100317
local n19 = 100318
tbl[1] = 100301
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
tbl[12] = n10
tbl[13] = n11
tbl[14] = n12
tbl[15] = n13
tbl[16] = n14
tbl[17] = n15
tbl[18] = n16
tbl[19] = n17
tbl[20] = n18
tbl[21] = n19
sub_ids = tbl
PaimonData = {ID = 1005, Alias = "Paimon"}
XiaoData = {ID = 10204, Alias = "Xiao"}
VerrGoldetData = {ID = 220801, Alias = "Npc220801"}
YanxiaoData = {ID = 220401, Alias = "Npc220401"}
XiaomingData = {ID = 231101, Alias = "Npc231101"}
Xiaoming02Data = {ID = 231102, Alias = "Npc231102"}
GongziData = {ID = 10200, Alias = "Npc10200"}
rewind_data = {}

rewind_data["100315"] = {
    npcs = {
        {
            alias = "Npc231101",
            script = "Actor/Npc/TempNPC",
            id = 231101,
            pos = "Q100315xiaomingtalk",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["100301"] = {
    npcs = {
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100301Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["100302"] = {
    npcs = {
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100301Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q100301PlayerPos"}}
}

quest_data["100303"] = {
    npcs = {
        {
            alias = "Npc220801",
            script = "Actor/Npc/TempNPC",
            id = 220801,
            pos = "Q100303VerrGoldet",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100301Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["100304"] = {
    npcs = {
        {
            alias = "Npc220801",
            script = "Actor/Npc/TempNPC",
            id = 220801,
            pos = "Q100303VerrGoldet",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100301Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["100305"] = {
    npcs = {
        {
            alias = "Npc220801",
            script = "Actor/Npc/TempNPC",
            id = 220801,
            pos = "Q100303VerrGoldet",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100301Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["100306"] = {
    npcs = {
        {
            alias = "Npc220801",
            script = "Actor/Npc/TempNPC",
            id = 220801,
            pos = "Q100303VerrGoldet",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100301Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Npc220401",
            script = "Actor/Npc/TempNPC",
            id = 220401,
            pos = "Q100306Yanxiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["100307"] = {
    npcs = {
        {
            alias = "Npc220801",
            script = "Actor/Npc/TempNPC",
            id = 220801,
            pos = "Q100303VerrGoldet",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100301Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Npc220401",
            script = "Actor/Npc/TempNPC",
            id = 220401,
            pos = "Q100306Yanxiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["100308"] = {
    npcs = {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q100307Trigger",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Npc220801",
            script = "Actor/Npc/TempNPC",
            id = 220801,
            pos = "Q100303VerrGoldet",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100301Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Npc220401",
            script = "Actor/Npc/TempNPC",
            id = 220401,
            pos = "Q100306Yanxiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Npc231101",
            script = "Actor/Npc/TempNPC",
            id = 231101,
            pos = "Q100308Ming",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["100309"] = {
    npcs = {
        {
            alias = "Npc220801",
            script = "Actor/Npc/TempNPC",
            id = 220801,
            pos = "Q100303VerrGoldet",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100301Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Npc220401",
            script = "Actor/Npc/TempNPC",
            id = 220401,
            pos = "Q100306Yanxiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["100310"] = {
    npcs = {
        {
            alias = "Npc220801",
            script = "Actor/Npc/TempNPC",
            id = 220801,
            pos = "Q100303VerrGoldet",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100301Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Npc220401",
            script = "Actor/Npc/TempNPC",
            id = 220401,
            pos = "Q100306Yanxiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["100321"] = {gadgets = {{id = 70710056, pos = "Q100321Gadget", alias = "Xiangmoyin", scene_id = 3}}}

quest_data["100311"] = {
    npcs = {
        {
            alias = "Npc220801",
            script = "Actor/Npc/TempNPC",
            id = 220801,
            pos = "Q100303VerrGoldet",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100301Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Npc220401",
            script = "Actor/Npc/TempNPC",
            id = 220401,
            pos = "Q100306Yanxiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    gadgets = {
        {id = 70710051, pos = "Q100311Rock01", alias = "Rock100301", scene_id = 3},
        {id = 70710052, pos = "Q100311Rock02", alias = "Rock100302", scene_id = 3},
        {id = 70710053, pos = "Q100311Rock03", alias = "Rock100303", scene_id = 3},
        {id = 70710058, pos = "Q100311JieMI", alias = "Guide1003", scene_id = 3}
    }
}

quest_data["100312"] = {
    npcs = {
        {
            alias = "Npc231102",
            script = "Actor/Npc/TempNPC",
            id = 231102,
            pos = "Q100312Ming",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    gadgets = {{id = 70710054, pos = "Q100312Ming", alias = "BornEff1003", scene_id = 3}}
}

quest_data["100313"] = {
    npcs = {
        {
            alias = "Npc231101",
            script = "Actor/Npc/TempNPC",
            id = 231101,
            pos = "Q100315Ming",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q100313Trigger"}}
}

quest_data["100314"] = {
    npcs = {
        {
            alias = "Npc231101",
            script = "Actor/Npc/TempNPC",
            id = 231101,
            pos = "Q100315xiaomingtalk",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q100315PlayerPos"}}
}

quest_data["100316"] = {
    npcs = {
        {
            alias = "Npc220401",
            script = "Actor/Npc/TempNPC",
            id = 220401,
            pos = "Q100306Yanxiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["100317"] = {
    npcs = {
        {
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            id = 10204,
            pos = "Q100306Xiao",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["100318"] = {
    npcs = {
        {
            alias = "Npc10200",
            script = "Actor/Npc/TempNPC",
            id = 10200,
            pos = "Q100318Gongzi",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

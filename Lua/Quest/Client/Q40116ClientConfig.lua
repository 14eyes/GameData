return {
    MainID = 40116,
    ActorAlias = "40116",
    SubIDs = {
        q4011601 = 4011601,
        q4011602 = 4011602,
        q4011603 = 4011603,
        q4011604 = 4011604,
        q4011605 = 4011605,
        q4011606 = 4011606,
        q4011614 = 4011614,
        q4011607 = 4011607,
        q4011608 = 4011608,
        q4011612 = 4011612,
        q4011615 = 4011615,
        q4011609 = 4011609,
        q4011611 = 4011611,
        q4011610 = 4011610,
        q4011613 = 4011613
    },
    Npcs = {
        Npc13247Data = {
            id = 13247,
            alias = "Npc13247",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13252Data = {
            id = 13252,
            alias = "Npc13252",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10090Data = {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13246Data = {
            id = 13246,
            alias = "Npc13246",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1029Data = {
            id = 1029,
            alias = "Npc1029",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13253Data = {
            id = 13253,
            alias = "Npc13253",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1051Data = {
            id = 1051,
            alias = "Npc1051",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q4011603Kaiche = sceneData:GetDummyPoint(10, "Q4011604_N13247"),
        TPos_Q4011614Finish = {pos = {x = 409.226, y = 329.384, z = -61.113}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q4011612Finish = {pos = {x = 444.762, y = 362.15, z = -170.558}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q4011615Finish = {pos = {x = 426.818, y = 401.589, z = -216.781}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q4011605Finish = sceneData:GetDummyPoint(10, "Q4011606_N13252")
    },
    Datas = {
        Q4011603kaiche = {narratorId = 4011601, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q4011606Kaiche = {narratorId = 4011602, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q4011609Kaiche = {
            narratorId = 4011603,
            pauseLen = 10,
            resumeLen = 5,
            tag = "StoryInMainPage",
            startCheckPause = false,
            dialogConfigList = {
                {audioEventName = "", audioEventDelayTime = 0},
                {audioEventName = "Play_sfx_npc_quest_necalevia_small_01_confuse", audioEventDelayTime = 0},
                {audioEventName = "", audioEventDelayTime = 0}
            }
        }
    }
}

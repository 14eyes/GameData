return {
    MainID = 40112,
    ActorAlias = "40112",
    SubIDs = {
        q4011201 = 4011201,
        q4011202 = 4011202,
        q4011203 = 4011203,
        q4011204 = 4011204,
        q4011205 = 4011205,
        q4011206 = 4011206,
        q4011207 = 4011207
    },
    Npcs = {
        QinData = {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10090Data = {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1051Data = {
            id = 1051,
            alias = "Npc1051",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1029Data = {
            id = 1029,
            alias = "Npc1029",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        GaiaData = {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        GaiaData_01 = {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q4011204kaiche = sceneData:GetDummyPoint(3, "Q4011204_N1051"),
        TPos_Q4011204Finish = sceneData:GetDummyPoint(3, "Q4011204_N1051")
    },
    Datas = {
        kaiche1 = {
            narratorId = 4011201,
            pauseLen = 10,
            resumeLen = 5,
            tag = "StoryInMainPage",
            startCheckPause = true
        },
        Kaiche2 = {narratorId = 4011202, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        kaiche3 = {narratorId = 4011203, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
    }
}

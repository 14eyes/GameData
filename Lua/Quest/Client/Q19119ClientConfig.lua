return {
    MainID = 19119,
    ActorAlias = "19119",
    SubIDs = {
        q1911901 = 1911901,
        q1911902 = 1911902,
        q1911903 = 1911903,
        q1911904 = 1911904,
        q1911905 = 1911905,
        q1911906 = 1911906,
        q1911907 = 1911907
    },
    Npcs = {
        Coop_TohmaData = {
            id = 503,
            alias = "Coop_Tohma",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3082Data = {
            id = 3082,
            alias = "Npc3082",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        RoutePointsData = {sceneData:GetDummyPoint(3, "Q1911902route1").pos, sceneData:GetDummyPoint(3, "Q1911902route2").pos},
        RoutePointsData1 = {sceneData:GetDummyPoint(3, "Q1911902route3").pos},
        RoutePointsData2 = {sceneData:GetDummyPoint(3, "Q1911902route5").pos, sceneData:GetDummyPoint(3, "Q1911903tuoma").pos},
        NarratorWithId1 = {narratorId = 191199901, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWithId2 = {narratorId = 191199903, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWithId3 = {narratorId = 191199906, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWithId4 = {narratorId = 191199908, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWithId5 = {narratorId = 191199910, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        RoutePointsData3 = {sceneData:GetDummyPoint(3, "Q1911902route4").pos},
        NarratorWithId6 = {narratorId = 191199911, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWithId7 = {narratorId = 191199912, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
    }
}

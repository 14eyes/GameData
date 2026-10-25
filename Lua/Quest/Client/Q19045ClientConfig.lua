return {
    MainID = 19045,
    ActorAlias = "19045",
    SubIDs = {
        q1904501 = 1904501,
        q1904502 = 1904502,
        q1904503 = 1904503,
        q1904504 = 1904504,
        q1904519 = 1904519,
        q1904505 = 1904505,
        q1904516 = 1904516,
        q1904506 = 1904506,
        q1904507 = 1904507,
        q1904508 = 1904508,
        q1904509 = 1904509,
        q1904510 = 1904510,
        q1904511 = 1904511,
        q1904513 = 1904513,
        q1904520 = 1904520,
        q1904521 = 1904521,
        q1904515 = 1904515,
        q1904522 = 1904522,
        q1904512 = 1904512,
        q1904514 = 1904514,
        q1904517 = 1904517,
        q1904518 = 1904518
    },
    Npcs = {
        Npc1024Data = {
            id = 1024,
            alias = "Npc1024",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        RoutePointsData1 = {
            sceneData:GetDummyPoint(20036, "Q19045Route101").pos,
            sceneData:GetDummyPoint(20036, "Q19045Route102").pos,
            sceneData:GetDummyPoint(20036, "Q19045Route103").pos,
            sceneData:GetDummyPoint(20036, "Q19045Bennett2").pos
        },
        RoutePointsData2 = {
            sceneData:GetDummyPoint(20036, "Q19045Route201").pos,
            sceneData:GetDummyPoint(20036, "Q19045Route202").pos,
            sceneData:GetDummyPoint(20036, "Q19045Route203").pos,
            sceneData:GetDummyPoint(20036, "Q19045Bennett4").pos
        },
        NarratorFail1 = {narratorId = 1904505, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorFail2 = {narratorId = 1904506, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorFail3 = {narratorId = 1904507, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Narrator05Start = {narratorId = 1904508, pauseLen = 10, resumeLen = 5, tag = "Story"},
        RoutePointsData3 = {
            sceneData:GetDummyPoint(20036, "Q19045Player5").pos,
            sceneData:GetDummyPoint(20036, "Q19045Bennett7").pos
        }
    }
}

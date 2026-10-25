return {
    MainID = 71824,
    ActorAlias = "71824",
    SubIDs = {
        q7182415 = 7182415,
        q7182401 = 7182401,
        q7182402 = 7182402,
        q7182403 = 7182403,
        q7182414 = 7182414,
        q7182404 = 7182404,
        q7182405 = 7182405,
        q7182406 = 7182406,
        q7182407 = 7182407,
        q7182408 = 7182408,
        q7182409 = 7182409,
        q7182410 = 7182410,
        q7182411 = 7182411,
        q7182412 = 7182412,
        q7182413 = 7182413
    },
    Npcs = {
        Npc220401Data = {
            id = 220401,
            alias = "Npc220401",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q41330YanxiaoBorn")
        },
        Npc220801Data = {
            id = 220801,
            alias = "Npc220801",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q71824LandLady")
        },
        Npc231102Data1 = {
            id = 231102,
            alias = "Npc231102",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q71824Hide1P1")
        },
        Npc231102Data2 = {
            id = 231102,
            alias = "Npc231102",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q71824Hide2P1")
        },
        Npc231102Data3 = {
            id = 231102,
            alias = "Npc231102",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q71824Hide3P1")
        },
        Npc231102DataEnd = {
            id = 231102,
            alias = "Npc231102",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q71824HideSeek3")
        }
    },
    Datas = {
        RouteHide1 = {sceneData:GetDummyPoint(3, "Q71824Hide1P2").pos, sceneData:GetDummyPoint(3, "Q71824HideSeek1").pos},
        RouteHide2 = {sceneData:GetDummyPoint(3, "Q71824Hide2P2").pos},
        RouteHide3 = {sceneData:GetDummyPoint(3, "Q71824HideSeek3").pos},
        NarratorWithId = {narratorId = 7182410, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorTable = {
            {dialogID = 718241001, audioEvtName = "", duration = 4},
            {dialogID = 718241002, audioEvtName = "", duration = 5},
            {dialogID = 718241003, audioEvtName = "", duration = 4}
        },
        RouteHide4 = {sceneData:GetDummyPoint(3, "Q71824HideSeekEnd").pos}
    }
}

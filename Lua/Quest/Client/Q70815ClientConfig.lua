return {
    MainID = 70815,
    ActorAlias = "70815",
    SubIDs = {
        q7081501 = 7081501,
        q7081502 = 7081502,
        q7081503 = 7081503,
        q7081504 = 7081504,
        q7081505 = 7081505,
        q7081506 = 7081506,
        q7081507 = 7081507,
        q7081508 = 7081508,
        q7081509 = 7081509,
        q7081510 = 7081510,
        q7081511 = 7081511
    },
    Npcs = {
        Npc2056Data = {
            id = 2056,
            alias = "Npc2056",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70815JiaYiBorn")
        },
        Npc2306Data = {
            id = 2306,
            alias = "Npc2306",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70815RuoXinBorn")
        },
        Npc2308Data = {
            id = 2308,
            alias = "Npc2308",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70815SixBorn")
        },
        Npc2308Data2 = {
            id = 2308,
            alias = "Npc2308",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70815SixFin")
        }
    },
    Datas = {
        RoutePointsData = {
            sceneData:GetDummyPoint(3, "Q70815SixRun1").pos,
            sceneData:GetDummyPoint(3, "Q70815SixRun2").pos,
            sceneData:GetDummyPoint(3, "Q70815SixRun3").pos,
            sceneData:GetDummyPoint(3, "Q70815SixRun4").pos,
            sceneData:GetDummyPoint(3, "Q70815SixRun5").pos,
            sceneData:GetDummyPoint(3, "Q70815SixRun6").pos,
            sceneData:GetDummyPoint(3, "Q70815SixRun7").pos
        },
        NarratorTable = {
            {dialogID = 708153001, audioEvtName = "", duration = 3},
            {dialogID = 708153002, audioEvtName = "", duration = 3}
        }
    }
}

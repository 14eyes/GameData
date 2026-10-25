return {
    MainID = 72661,
    ActorAlias = "72661",
    SubIDs = {
        q7266101 = 7266101,
        q7266102 = 7266102,
        q7266103 = 7266103,
        q7266104 = 7266104,
        q7266105 = 7266105,
        q7266106 = 7266106,
        q7266107 = 7266107,
        q7266113 = 7266113,
        q7266108 = 7266108,
        q7266109 = 7266109,
        q7266110 = 7266110,
        q7266111 = 7266111,
        q7266112 = 7266112
    },
    Npcs = {
        Npc1673Data = {
            id = 1673,
            alias = "Npc1673",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3200Data = {
            id = 3200,
            alias = "Npc3200",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12164Data = {
            id = 12164,
            alias = "SneakAI4",
            script = "Actor/Npc/FollowNPCFishing",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        RoutePointsData = {
            sceneData:GetDummyPoint(3, "Q72661_point1").pos,
            sceneData:GetDummyPoint(3, "Q72661_point2").pos,
            sceneData:GetDummyPoint(3, "Q72661_point3").pos,
            sceneData:GetDummyPoint(3, "Q72661_point4").pos,
            sceneData:GetDummyPoint(3, "Q72661_point5").pos
        },
        Q72661Trigger1_ = {
            alias = "Q72661Trigger1",
            script = "Actor/Gadget/Q72661Trigger1",
            id = 7090002,
            point = sceneData:GetDummyPoint(3, "Q72661_daobaotuan")
        },
        KaicheFightOver = {
            {dialogID = 726619903, audioEvtName = "", duration = 3},
            {dialogID = 726619904, audioEvtName = "", duration = 3},
            {dialogID = 726619905, audioEvtName = "", duration = 3},
            {dialogID = 726619906, audioEvtName = "", duration = 3}
        },
        KaicheA = {
            {dialogID = 726619901, audioEvtName = "", duration = 3},
            {dialogID = 726619902, audioEvtName = "", duration = 3}
        },
        KaicheWarn = {dialogID = 726619908, audioEvtName = "", duration = 3},
        KaicheWarning = {{dialogID = 726619908, audioEvtName = "", duration = 3}}
    }
}

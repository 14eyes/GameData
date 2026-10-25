return {
    MainID = 22006,
    ActorAlias = "22006",
    SubIDs = {
        q2200601 = 2200601,
        q2200602 = 2200602,
        q2200603 = 2200603,
        q2200604 = 2200604,
        q2200605 = 2200605,
        q2200606 = 2200606
    },
    Actors = {
        BaoEr = {
            alias = "Npc2421",
            script = "Actor/Npc/TempNPC",
            id = 2421,
            pos = sceneData:GetDummyPoint(3, "Q22005BaoerInitPos").pos,
            rot = sceneData:GetDummyPoint(3, "Q22005BaoerInitPos").rot
        },
        SoRaYa = {
            alias = "Npc2211",
            script = "Actor/Npc/TempNPC",
            id = 2211,
            pos = sceneData:GetDummyPoint(3, "Q22006SoRaYaInitPos").pos,
            rot = sceneData:GetDummyPoint(3, "Q22006SoRaYaInitPos").rot
        },
        Paimon = {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = {x = 0, y = 0, z = 0},
            rot = {x = 0, y = 0, z = 0}
        }
    },
    Datas = {
        NarratorTable = {{dialogID = 220060601, audioEvtName = "", duration = 2}},
        Reminders = {Reminder1 = {dialogID = 220060601, audioEvtName = "", duration = 2}}
    }
}

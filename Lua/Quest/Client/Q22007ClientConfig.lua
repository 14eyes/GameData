return {
    MainID = 22007,
    ActorAlias = "22007",
    SubIDs = {q2200701 = 2200701, q2200702 = 2200702, q2200703 = 2200703, q2200704 = 2200704, q2200705 = 2200705},
    Actors = {
        BaoEr = {
            alias = "Npc2421",
            script = "Actor/Npc/TempNPC",
            id = 2421,
            pos = sceneData:GetDummyPoint(3, "Q22005BaoerInitPos").pos,
            rot = sceneData:GetDummyPoint(3, "Q22005BaoerInitPos").rot
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
        PaimonReminder01 = {
            {dialogID = 220070307, audioEvtName = "", duration = 2},
            {dialogID = 220070308, audioEvtName = "", duration = 2},
            {dialogID = 220070309, audioEvtName = "", duration = 2}
        },
        PaimonReminder02 = {
            {dialogID = 220070310, audioEvtName = "", duration = 2},
            {dialogID = 220070311, audioEvtName = "", duration = 2}
        }
    }
}

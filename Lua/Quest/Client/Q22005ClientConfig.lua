return {
    MainID = 22005,
    ActorAlias = "22005",
    SubIDs = {q2200501 = 2200501, q2200502 = 2200502, q2200503 = 2200503},
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
    Datas = {PaimonReminder01 = {{dialogID = 220050401, audioEvtName = "", duration = 2}}}
}

return {
    MainID = 12004,
    ActorAlias = "12004",
    SubIDs = {q1200401 = 1200401, q1200403 = 1200403, q1200402 = 1200402},
    Npcs = {
        Npc1013Data = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200401Ayaka")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(3, "Q1200401Paimon")
        }
    },
    Datas = {
        Q12004Trigger_ = {
            alias = "Q12004Trigger",
            script = "Actor/Gadget/Q12004Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1200401Ayaka")
        }
    }
}

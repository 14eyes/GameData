return {
    MainID = 40001,
    ActorAlias = "40001",
    SubIDs = {q4000101 = 4000101, q4000102 = 4000102, q4000103 = 4000103},
    PlayerData = {
        BornPos = sceneData:GetDummyPoint(3, "Q4000101_Player").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q4000101_Player").rot,
        BornPos2 = sceneData:GetDummyPoint(3, "Q4000103_Player").pos,
        BornDir2 = sceneData:GetDummyPoint(3, "Q4000103_Player").rot
    },
    PaimonData = {
        Alias = "Paimon",
        Script = "Actor/Quest/Q352/Paimon",
        ID = 1005,
        BornPos = sceneData:GetDummyPoint(3, "Q4000101_Paimon").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q4000101_Paimon").rot,
        BornPos2 = sceneData:GetDummyPoint(3, "Q4000103_Paimon").pos,
        BornDir2 = sceneData:GetDummyPoint(3, "Q4000103_Paimon").rot
    },
    BoLaiData = {
        Alias = "Npc201301",
        Script = "Actor/Npc/TempNPC",
        ID = 201301,
        BornPos = sceneData:GetDummyPoint(3, "Q40006NPC_BoLai").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q40006NPC_BoLai").rot
    },
    NarratorData = {
        Story1 = {{dialogID = 400010001, duration = 4.13}, {dialogID = 400010002, duration = 5.23}},
        Story2 = {{dialogID = 400010003, duration = 3.71}, {dialogID = 400010004, duration = 7.47}},
        Story3 = {{dialogID = 400010005, duration = 5.93}, {dialogID = 400010006, duration = 5.69}},
        Story4 = {{dialogID = 400010007, duration = 3.36}, {dialogID = 400010008, duration = 2.05}},
        Story5 = {{dialogID = 400011001, duration = 2.75}, {dialogID = 400011002, duration = 4.4}}
    }
}

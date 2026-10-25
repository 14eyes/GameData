return {
    MainID = 10500,
    ActorAlias = "10500",
    SubIDs = {
        q1050007 = 1050007,
        q1050001 = 1050001,
        q1050002 = 1050002,
        q1050003 = 1050003,
        q1050004 = 1050004,
        q1050005 = 1050005,
        q1050008 = 1050008,
        q1050006 = 1050006
    },
    Npcs = {
        Npc10095Data = {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10500MonaSpawn")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(3, "Q10500SlimeSpawn")
        },
        Npc243001Data = {
            id = 243001,
            alias = "Npc243001",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1050002Zhulaoban")
        }
    },
    Points = {NewTransfrom = sceneData:GetDummyPoint(3, "Q1050008Avatar")},
    Datas = {
        NarratorWithId1 = {narratorId = 1050001, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorWithId2 = {narratorId = 1050002, pauseLen = 10, resumeLen = 5, tag = "StoryCut"}
    }
}

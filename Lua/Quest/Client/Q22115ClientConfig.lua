return {
    MainID = 22115,
    ActorAlias = "22115",
    SubIDs = {
        q2211501 = 2211501,
        q2211502 = 2211502,
        q2211503 = 2211503,
        q2211504 = 2211504,
        q2211505 = 2211505,
        q2211506 = 2211506,
        q2211507 = 2211507,
        q2211508 = 2211508,
        q2211509 = 2211509,
        q2211510 = 2211510,
        q2211511 = 2211511
    },
    Npcs = {
        Npc1624Data = {
            id = 1624,
            alias = "Npc1624",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q22115NPCBorn")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        PaimonReminder = {
            {dialogID = 221150403, audioEvtName = "", duration = 3},
            {dialogID = 221150404, audioEvtName = "", duration = 3}
        }
    }
}

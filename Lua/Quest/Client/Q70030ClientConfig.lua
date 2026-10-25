return {
    MainID = 70030,
    ActorAlias = "70030",
    SubIDs = {
        q7003001 = 7003001,
        q7003002 = 7003002,
        q7003003 = 7003003,
        q7003004 = 7003004,
        q7003006 = 7003006,
        q7003007 = 7003007,
        q7003008 = 7003008,
        q7003009 = 7003009,
        q7003010 = 7003010
    },
    Npcs = {
        Npc2433Data = {
            id = 2433,
            alias = "Npc2433",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70030JuzaStart")
        },
        Npc1032Data = {
            id = 1032,
            alias = "Npc1032",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q70030KazuhaStart")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

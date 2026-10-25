return {
    MainID = 10203,
    ActorAlias = "10203",
    SubIDs = {q1020300 = 1020300, q1020301 = 1020301, q1020302 = 1020302},
    DoorData = {
        Door = "Npc10092",
        DoorScript = "Actor/Npc/TempNPC",
        DoorID = 10092,
        bornPos1 = sceneData:GetDummyPoint(1004, "Q10202DoorSpawn").pos,
        bornDir1 = sceneData:GetDummyPoint(1004, "Q10202DoorSpawn").rot
    },
    QinData = {
        Qin = "Qin",
        QinScript = "Actor/Quest/Q411/Qin",
        QinID = 1006,
        bornPos1 = sceneData:GetDummyPoint(1004, "Q10202QinSpawn").pos,
        bornDir1 = sceneData:GetDummyPoint(1004, "Q10202QinSpawn").rot
    }
}

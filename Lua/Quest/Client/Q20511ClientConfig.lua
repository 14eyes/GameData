return {
    MainID = 20511,
    ActorAlias = "20511",
    SubIDs = {q2051101 = 2051101, q2051102 = 2051102, q2051103 = 2051103, q2051104 = 2051104},
    Npcs = {
        Npc1408Data = {
            id = 1408,
            alias = "Npc1408",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q20511_AnDongNiInitPos")
        }
    },
    Gadgets = {
        Q20511Compass = {id = 70710090, alias = "Q20511Compass", point = sceneData:GetDummyPoint(3, "Q20511_GrassSlime")}
    },
    Datas = {TargetPos = sceneData:GetDummyPoint(3, "Q20511_GrassSlime").pos}
}

return {
    MainID = 20519,
    ActorAlias = "20519",
    SubIDs = {q2051901 = 2051901, q2051902 = 2051902, q2051903 = 2051903, q2051904 = 2051904},
    Npcs = {
        Npc1525Data = {
            id = 1525,
            alias = "Npc1525",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q20518_Vile_InitPos")
        },
        Npc1433Data = {
            id = 1433,
            alias = "Npc1433",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q20518_Huffman_InitPos")
        },
        Npc1473Data = {
            id = 1473,
            alias = "Npc1473",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(1008, "Q20518_Jilliana_InitPos")
        }
    },
    Datas = {
        NarratorTable_1 = {
            {dialogID = 205199901, audioEvtName = "", duration = 3},
            {dialogID = 205199902, audioEvtName = "", duration = 3}
        },
        NarratorTable_2 = {{dialogID = 205199903, audioEvtName = "", duration = 3}}
    }
}

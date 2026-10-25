return {
    MainID = 10110,
    ActorAlias = "10110",
    SubIDs = {
        q1011001 = 1011001,
        q1011002 = 1011002,
        q1011003 = 1011003,
        q1011004 = 1011004,
        q1011005 = 1011005,
        q1011006 = 1011006,
        q1011007 = 1011007,
        q1011008 = 1011008
    },
    PaimonData = {alias = "Paimon", script = "Actor/Quest/Q352/Paimon", id = 1005},
    WendyData = {alias = "Wendy", script = "Actor/Quest/Q301/Wendy301", id = 1001},
    PhantomNoraData = {alias = "Npc10244", script = "Actor/Npc/TempNPC", id = 10244},
    PhantomGuardianData = {alias = "Npc10242", script = "Actor/Npc/TempNPC", id = 10242},
    PhantomQinData = {alias = "Npc10241", script = "Actor/Npc/TempNPC", id = 10241},
    TriggerData = {
        Trigger1 = {
            alias = "Q10110Trigger1",
            script = "Actor/Gadget/Q10110Trigger1",
            id = 70900002,
            pos = sceneData:GetDummyPoint(3, "Q1011001NuoLa").pos,
            dir = sceneData:GetDummyPoint(3, "Q1011001NuoLa").rot
        },
        Trigger2 = {
            alias = "Q10110Trigger2",
            script = "Actor/Gadget/Q10110Trigger2",
            id = 70900002,
            pos = sceneData:GetDummyPoint(3, "Q1011003Timi").pos,
            dir = sceneData:GetDummyPoint(3, "Q1011003Timi").rot
        },
        Trigger3 = {
            alias = "Q10110Trigger1",
            script = "Actor/Gadget/Q10110Trigger3",
            id = 70900002,
            pos = sceneData:GetDummyPoint(3, "Q1011004Keaya").pos,
            dir = sceneData:GetDummyPoint(3, "Q1011004Keaya").rot
        }
    },
    NarratorData = {
        Story1 = {{dialogID = 101100201, duration = 4}, {dialogID = 101100202, duration = 4}},
        Story2 = {
            {dialogID = 101100301, duration = 4},
            {dialogID = 101100302, duration = 4},
            {dialogID = 101100303, duration = 4}
        },
        Story3 = {
            {dialogID = 101100401, duration = 4},
            {dialogID = 101100402, duration = 4},
            {dialogID = 101100403, duration = 4}
        },
        Story4 = {{dialogID = 101100701, duration = 4}, {dialogID = 101100702, duration = 4}}
    }
}

return {
    MainID = 10112,
    ActorAlias = "10112",
    SubIDs = {
        q1011201 = 1011201,
        q1011202 = 1011202,
        q1011203 = 1011203,
        q1011204 = 1011204,
        q1011205 = 1011205,
        q1011206 = 1011206,
        q1011207 = 1011207,
        q1011208 = 1011208
    },
    TriggerData = {
        Trigger1 = {
            alias = "Q1011201Trigger1",
            script = "Actor/Gadget/Q10112Trigger1",
            id = 70900002,
            pos = sceneData:GetDummyPoint(3, "Q1011201Trigger").pos,
            dir = sceneData:GetDummyPoint(3, "Q1011201Trigger").rot
        },
        Trigger2 = {
            alias = "Q1011201Trigger2",
            script = "Actor/Gadget/Q10112Trigger2",
            id = 70900002,
            pos = sceneData:GetDummyPoint(3, "Q1011205QQman").pos,
            dir = sceneData:GetDummyPoint(3, "Q1011205QQman").rot
        },
        Trigger3 = {
            alias = "Q1011201Trigger3",
            script = "Actor/Gadget/Q10112Trigger3",
            id = 70900002,
            pos = sceneData:GetDummyPoint(3, "Q1011203Target").pos,
            dir = sceneData:GetDummyPoint(3, "Q1011203Target").rot
        },
        Trigger4 = {
            alias = "Q1011201Trigger4",
            script = "Actor/Gadget/Q10112Trigger4",
            id = 70900002,
            pos = sceneData:GetDummyPoint(3, "Q1011205QQman").pos,
            dir = sceneData:GetDummyPoint(3, "Q1011205QQman").rot
        }
    },
    NarratorData = {
        Story1 = {
            {dialogID = 101120101, duration = 3},
            {dialogID = 101120102, duration = 3},
            {dialogID = 101120103, duration = 3}
        }
    },
    JackData = {alias = "Npc141301", script = "Actor/Npc/TempNPC", id = 141301},
    StanlyData = {alias = "Npc141101", script = "Actor/Npc/TempNPC", id = 141101},
    PaimonData = {alias = "Paimon", script = "Actor/Quest/Q352/Paimon", id = 1005}
}

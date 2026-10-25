return {
    MainID = 12007,
    ActorAlias = "12007",
    SubIDs = {
        q1200701 = 1200701,
        q1200702 = 1200702,
        q1200711 = 1200711,
        q1200710 = 1200710,
        q1200703 = 1200703,
        q1200708 = 1200708,
        q1200704 = 1200704,
        q1200705 = 1200705,
        q1200706 = 1200706,
        q1200707 = 1200707,
        q1200712 = 1200712,
        q1200713 = 1200713
    },
    Npcs = {
        Npc1013DataBox1 = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200701LetterPosOut")
        },
        Npc1013DataBox2 = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200701LetterAyakaFound")
        },
        Npc1013DataBox3 = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200703LetterAyakaTalk")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId = {narratorId = 12007, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q12007TriggerIn_ = {
            alias = "Q12007TriggerIn",
            script = "Actor/Gadget/Q12007TriggerIn",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1200701LetterPosOut")
        },
        Q12007TriggerTalkEnd_ = {
            alias = "Q12007TriggerTalkEnd",
            script = "Actor/Gadget/Q12007TriggerTalkEnd",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1200703LetterAyakaTalk")
        }
    }
}

return {
    MainID = 79007,
    ActorAlias = "79007",
    SubIDs = {
        q7900701 = 7900701,
        q7900702 = 7900702,
        q7900703 = 7900703,
        q7900704 = 7900704,
        q7900705 = 7900705,
        q7900706 = 7900706
    },
    Npcs = {
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(4, "Q79007Paimon")
        }
    },
    Datas = {
        NarratorTable = {
            {dialogID = 790070190, audioEvtName = "", duration = 4},
            {dialogID = 790070191, audioEvtName = "", duration = 5},
            {dialogID = 790070192, audioEvtName = "", duration = 4},
            {dialogID = 790070193, audioEvtName = "", duration = 4}
        },
        NarratorWithId = {narratorId = 79007, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q79007Trigger1_ = {
            alias = "Q79007Trigger1",
            script = "Actor/Gadget/Q79007Trigger1",
            id = 70900002,
            point = sceneData:GetDummyPoint(4, "Q7900702Area")
        }
    }
}

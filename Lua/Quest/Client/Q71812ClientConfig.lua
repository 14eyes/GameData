return {
    MainID = 71812,
    ActorAlias = "71812",
    SubIDs = {
        q7181201 = 7181201,
        q7181202 = 7181202,
        q7181203 = 7181203,
        q7181204 = 7181204,
        q7181206 = 7181206,
        q7181207 = 7181207,
        q7181208 = 7181208,
        q7181205 = 7181205,
        q7181209 = 7181209,
        q7181210 = 7181210
    },
    Npcs = {
        Npc2016Data = {
            id = 2016,
            alias = "Npc2016",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q7181201_lanjiePos")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(3, "Q71812_Paimon")
        }
    },
    Datas = {
        NarratorWithId_7181202 = {narratorId = 718129901, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId_7181203 = {narratorId = 718129902, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId_7181209 = {narratorId = 718129903, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Reminder02Finish = {{dialogID = 718129903, audioEvtName = "", duration = 5}},
        Reminder02Start = {{dialogID = 718129903, audioEvtName = "", duration = 5}},
        Q71812Trigger_ = {
            alias = "Q71812Trigger",
            script = "Actor/Gadget/Q71812Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7181202_qqrenPos")
        }
    }
}

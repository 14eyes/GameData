return {
    MainID = 41144,
    ActorAlias = "41144",
    SubIDs = {q4114404 = 4114404, q4114401 = 4114401, q4114402 = 4114402, q4114403 = 4114403},
    Npcs = {
        Npc30027Data = {
            id = 30027,
            alias = "Npc30027",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41144_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411440901, audioEvtName = "", duration = 4},
            {dialogID = 411440902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411441001, audioEvtName = "", duration = 4},
            {dialogID = 411441002, audioEvtName = "", duration = 4}
        }
    }
}

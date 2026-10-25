return {
    MainID = 41154,
    ActorAlias = "41154",
    SubIDs = {q4115404 = 4115404, q4115401 = 4115401, q4115402 = 4115402, q4115403 = 4115403},
    Npcs = {
        Npc30027Data = {
            id = 30027,
            alias = "Npc30027",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41154_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411540901, audioEvtName = "", duration = 4},
            {dialogID = 411540902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411541001, audioEvtName = "", duration = 4},
            {dialogID = 411541002, audioEvtName = "", duration = 4}
        }
    }
}

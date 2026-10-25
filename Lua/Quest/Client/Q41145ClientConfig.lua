return {
    MainID = 41145,
    ActorAlias = "41145",
    SubIDs = {q4114504 = 4114504, q4114501 = 4114501, q4114502 = 4114502, q4114503 = 4114503},
    Npcs = {
        Npc30028Data = {
            id = 30028,
            alias = "Npc30028",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41145_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411450901, audioEvtName = "", duration = 4},
            {dialogID = 411450902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411451001, audioEvtName = "", duration = 4},
            {dialogID = 411451002, audioEvtName = "", duration = 4}
        }
    }
}

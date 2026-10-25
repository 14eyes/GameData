return {
    MainID = 41141,
    ActorAlias = "41141",
    SubIDs = {q4114104 = 4114104, q4114101 = 4114101, q4114102 = 4114102, q4114103 = 4114103},
    Npcs = {
        Npc30027Data = {
            id = 30027,
            alias = "Npc30027",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41141_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411410901, audioEvtName = "", duration = 4},
            {dialogID = 411410902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411411001, audioEvtName = "", duration = 4},
            {dialogID = 411411002, audioEvtName = "", duration = 4}
        }
    }
}

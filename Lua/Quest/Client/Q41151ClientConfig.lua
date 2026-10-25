return {
    MainID = 41151,
    ActorAlias = "41151",
    SubIDs = {q4115104 = 4115104, q4115101 = 4115101, q4115102 = 4115102, q4115103 = 4115103},
    Npcs = {
        Npc30028Data = {
            id = 30028,
            alias = "Npc30028",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41151_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411510901, audioEvtName = "", duration = 4},
            {dialogID = 411510902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411511001, audioEvtName = "", duration = 4},
            {dialogID = 411511002, audioEvtName = "", duration = 4}
        }
    }
}

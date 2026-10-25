return {
    MainID = 41153,
    ActorAlias = "41153",
    SubIDs = {q4115304 = 4115304, q4115301 = 4115301, q4115302 = 4115302, q4115303 = 4115303},
    Npcs = {
        Npc30028Data = {
            id = 30028,
            alias = "Npc30028",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41153_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411530901, audioEvtName = "", duration = 4},
            {dialogID = 411530902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411531001, audioEvtName = "", duration = 4},
            {dialogID = 411531002, audioEvtName = "", duration = 4}
        }
    }
}

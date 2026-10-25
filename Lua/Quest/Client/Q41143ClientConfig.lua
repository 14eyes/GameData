return {
    MainID = 41143,
    ActorAlias = "41143",
    SubIDs = {q4114304 = 4114304, q4114301 = 4114301, q4114302 = 4114302, q4114303 = 4114303},
    Npcs = {
        Npc1576Data = {
            id = 1576,
            alias = "Npc1576",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41143_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411430901, audioEvtName = "", duration = 4},
            {dialogID = 411430902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411431001, audioEvtName = "", duration = 4},
            {dialogID = 411431002, audioEvtName = "", duration = 4}
        }
    }
}

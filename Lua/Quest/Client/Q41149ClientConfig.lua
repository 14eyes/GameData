return {
    MainID = 41149,
    ActorAlias = "41149",
    SubIDs = {q4114904 = 4114904, q4114901 = 4114901, q4114902 = 4114902, q4114903 = 4114903},
    Npcs = {
        Npc157601Data = {
            id = 157601,
            alias = "Npc157601",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41149_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411490901, audioEvtName = "", duration = 4},
            {dialogID = 411490902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411491001, audioEvtName = "", duration = 4},
            {dialogID = 411491002, audioEvtName = "", duration = 4}
        }
    }
}

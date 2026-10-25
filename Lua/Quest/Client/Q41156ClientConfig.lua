return {
    MainID = 41156,
    ActorAlias = "41156",
    SubIDs = {q4115604 = 4115604, q4115601 = 4115601, q4115602 = 4115602, q4115603 = 4115603},
    Npcs = {
        Npc30027Data = {
            id = 30027,
            alias = "Npc30027",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41156_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411560901, audioEvtName = "", duration = 4},
            {dialogID = 411560902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411561001, audioEvtName = "", duration = 4},
            {dialogID = 411561002, audioEvtName = "", duration = 4}
        }
    }
}

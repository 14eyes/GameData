return {
    MainID = 41150,
    ActorAlias = "41150",
    SubIDs = {q4115004 = 4115004, q4115001 = 4115001, q4115002 = 4115002, q4115003 = 4115003},
    Npcs = {
        Npc30027Data = {
            id = 30027,
            alias = "Npc30027",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41150_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411500901, audioEvtName = "", duration = 4},
            {dialogID = 411500902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411501001, audioEvtName = "", duration = 4},
            {dialogID = 411501002, audioEvtName = "", duration = 4}
        }
    }
}

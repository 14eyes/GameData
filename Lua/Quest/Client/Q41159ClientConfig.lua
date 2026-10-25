return {
    MainID = 41159,
    ActorAlias = "41159",
    SubIDs = {q4115904 = 4115904, q4115901 = 4115901, q4115902 = 4115902, q4115903 = 4115903},
    Npcs = {
        Npc30027Data = {
            id = 30027,
            alias = "Npc30027",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41159_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411590901, audioEvtName = "", duration = 4},
            {dialogID = 411590902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411591001, audioEvtName = "", duration = 4},
            {dialogID = 411591002, audioEvtName = "", duration = 4}
        }
    }
}

return {
    MainID = 41148,
    ActorAlias = "41148",
    SubIDs = {q4114804 = 4114804, q4114801 = 4114801, q4114802 = 4114802, q4114803 = 4114803},
    Npcs = {
        Npc30029Data = {
            id = 30029,
            alias = "Npc30029",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41148_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411480901, audioEvtName = "", duration = 4},
            {dialogID = 411480902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411481001, audioEvtName = "", duration = 4},
            {dialogID = 411481002, audioEvtName = "", duration = 4}
        }
    }
}

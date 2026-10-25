return {
    MainID = 41152,
    ActorAlias = "41152",
    SubIDs = {q4115204 = 4115204, q4115201 = 4115201, q4115202 = 4115202, q4115203 = 4115203},
    Npcs = {
        Npc159301Data = {
            id = 159301,
            alias = "Npc159301",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41152_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411520901, audioEvtName = "", duration = 4},
            {dialogID = 411520902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411521001, audioEvtName = "", duration = 4},
            {dialogID = 411521002, audioEvtName = "", duration = 4}
        }
    }
}

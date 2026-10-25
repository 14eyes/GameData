return {
    MainID = 41146,
    ActorAlias = "41146",
    SubIDs = {q4114604 = 4114604, q4114601 = 4114601, q4114602 = 4114602, q4114603 = 4114603},
    Npcs = {
        Npc157901Data = {
            id = 157901,
            alias = "Npc157901",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41146_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411460901, audioEvtName = "", duration = 4},
            {dialogID = 411460902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411461001, audioEvtName = "", duration = 4},
            {dialogID = 411461002, audioEvtName = "", duration = 4}
        }
    }
}

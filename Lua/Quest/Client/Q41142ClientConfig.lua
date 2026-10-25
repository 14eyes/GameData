return {
    MainID = 41142,
    ActorAlias = "41142",
    SubIDs = {q4114204 = 4114204, q4114201 = 4114201, q4114202 = 4114202, q4114203 = 4114203},
    Npcs = {
        Npc30028Data = {
            id = 30028,
            alias = "Npc30028",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41142_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411420901, audioEvtName = "", duration = 4},
            {dialogID = 411420902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411421001, audioEvtName = "", duration = 4},
            {dialogID = 411421002, audioEvtName = "", duration = 4}
        }
    }
}

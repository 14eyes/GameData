return {
    MainID = 41160,
    ActorAlias = "41160",
    SubIDs = {q4116004 = 4116004, q4116001 = 4116001, q4116002 = 4116002, q4116003 = 4116003},
    Npcs = {
        Npc30028Data = {
            id = 30028,
            alias = "Npc30028",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "EQ41160_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411600701, audioEvtName = "", duration = 4},
            {dialogID = 411600702, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411600703, audioEvtName = "", duration = 4},
            {dialogID = 411600704, audioEvtName = "", duration = 4}
        }
    }
}

return {
    MainID = 41155,
    ActorAlias = "41155",
    SubIDs = {q4115504 = 4115504, q4115501 = 4115501, q4115502 = 4115502, q4115503 = 4115503},
    Npcs = {
        Npc159301Data = {
            id = 159301,
            alias = "Npc159301",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41155_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411550901, audioEvtName = "", duration = 4},
            {dialogID = 411550902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411551001, audioEvtName = "", duration = 4},
            {dialogID = 411551002, audioEvtName = "", duration = 4}
        }
    }
}

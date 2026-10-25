return {
    MainID = 41121,
    ActorAlias = "41121",
    SubIDs = {q4112104 = 4112104, q4112101 = 4112101, q4112102 = 4112102, q4112103 = 4112103},
    Npcs = {
        Npc1593Data = {
            id = 1593,
            alias = "Npc1593",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41121_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411210901, audioEvtName = "", duration = 4},
            {dialogID = 411210902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411211001, audioEvtName = "", duration = 4},
            {dialogID = 411211002, audioEvtName = "", duration = 4}
        }
    }
}

return {
    MainID = 41157,
    ActorAlias = "41157",
    SubIDs = {q4115704 = 4115704, q4115701 = 4115701, q4115702 = 4115702, q4115703 = 4115703},
    Npcs = {
        Npc30029Data = {
            id = 30029,
            alias = "Npc30029",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "EQ41157_NPCBorn")
        }
    },
    Datas = {
        CountDownFailReminder = {
            {dialogID = 411570901, audioEvtName = "", duration = 4},
            {dialogID = 411570902, audioEvtName = "", duration = 4}
        },
        WatcherFailReminder = {
            {dialogID = 411571001, audioEvtName = "", duration = 4},
            {dialogID = 411571002, audioEvtName = "", duration = 4}
        }
    }
}

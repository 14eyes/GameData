return {
    MainID = 20104,
    ActorAlias = "20104",
    SubIDs = {q2010401 = 2010401, q2010402 = 2010402, q2010403 = 2010403, q2010404 = 2010404, q2010405 = 2010405},
    Npcs = {
        Npc1596Data = {
            id = 1596,
            alias = "Npc1596",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Npc1596Born")
        },
        Npc1595Data = {
            id = 1595,
            alias = "Npc1595",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Npc1595Born")
        }
    },
    Datas = {
        SuccessReminder = {
            {dialogID = 201040401, audioEvtName = "", duration = 4},
            {dialogID = 201040402, audioEvtName = "", duration = 4}
        },
        FailReminder = {
            {dialogID = 201040403, audioEvtName = "", duration = 4},
            {dialogID = 201040404, audioEvtName = "", duration = 4}
        }
    }
}

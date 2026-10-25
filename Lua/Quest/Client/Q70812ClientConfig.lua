return {
    MainID = 70812,
    ActorAlias = "70812",
    SubIDs = {
        q7081201 = 7081201,
        q7081202 = 7081202,
        q7081203 = 7081203,
        q7081204 = 7081204,
        q7081205 = 7081205,
        q7081206 = 7081206,
        q7081207 = 7081207,
        q7081208 = 7081208
    },
    Npcs = {
        Npc1445Data = {
            id = 1445,
            alias = "Npc1445",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70003Alami")
        }
    },
    Datas = {
        BoradReminder = {
            {dialogID = 708120601, audioEvtName = "", duration = 6},
            {dialogID = 708120602, audioEvtName = "", duration = 6}
        },
        PosterReminder1 = {{dialogID = 708120701, audioEvtName = "", duration = 8}},
        PosterReminder2 = {{dialogID = 708120801, audioEvtName = "", duration = 8}},
        PosterReminder3 = {{dialogID = 708120901, audioEvtName = "", duration = 8}},
        TransmitPoint = {point_id = 1, scene_id = 3, pos = "Q70812PlayerTransmit"}
    }
}

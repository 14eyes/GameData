return {
    MainID = 71813,
    ActorAlias = "71813",
    SubIDs = {
        q7181301 = 7181301,
        q7181302 = 7181302,
        q7181303 = 7181303,
        q7181304 = 7181304,
        q7181305 = 7181305,
        q7181306 = 7181306,
        q7181307 = 7181307,
        q7181308 = 7181308,
        q7181309 = 7181309,
        q7181310 = 7181310,
        q7181311 = 7181311
    },
    Npcs = {
        Npc2143Data = {
            id = 2143,
            alias = "Npc2143",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Paimon07 = {{dialogID = 718131101, audioEvtName = "", duration = 5}},
        Paimon08 = {{dialogID = 718131102, audioEvtName = "", duration = 5}},
        Paimon09 = {{dialogID = 718131103, audioEvtName = "", duration = 5}},
        Q71813Trigger1_ = {
            alias = "Q71813Trigger1",
            script = "Actor/Gadget/Q71813Trigger1",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q71813Target1")
        },
        Q71813Trigger2_ = {
            alias = "Q71813Trigger2",
            script = "Actor/Gadget/Q71813Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q71813Target2")
        },
        Q71813Trigger3_ = {
            alias = "Q71813Trigger3",
            script = "Actor/Gadget/Q71813Trigger3",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q71813Target3")
        },
        Paimon10 = {{dialogID = 718131104, audioEvtName = "", duration = 5}}
    }
}

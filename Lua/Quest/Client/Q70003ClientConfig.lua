return {
    MainID = 70003,
    ActorAlias = "70003",
    SubIDs = {
        q7000301 = 7000301,
        q7000302 = 7000302,
        q7000303 = 7000303,
        q7000304 = 7000304,
        q7000305 = 7000305,
        q7000306 = 7000306,
        q7000307 = 7000307,
        q7000308 = 7000308
    },
    Npcs = {
        Npc1445Data = {
            id = 1445,
            alias = "Npc1445",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1431Data = {
            id = 1431,
            alias = "Npc1431",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20219Data = {
            id = 20219,
            alias = "Npc20219",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Reminder01 = {{dialogID = 700039901, audioEvtName = "", duration = 5}},
        Reminder02 = {
            {dialogID = 700039902, audioEvtName = "", duration = 4},
            {dialogID = 700039903, audioEvtName = "", duration = 4},
            {dialogID = 700039904, audioEvtName = "", duration = 4},
            {dialogID = 700039905, audioEvtName = "", duration = 4}
        },
        Reminder03 = {{dialogID = 700039906, audioEvtName = "", duration = 4}},
        Q70003Trigger1_ = {
            alias = "Q70003Trigger1",
            script = "Actor/Gadget/Q70003Trigger1",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q70003Target1")
        },
        Q70003Trigger2_ = {
            alias = "Q70003Trigger2",
            script = "Actor/Gadget/Q70003Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q70003Target3")
        },
        Q70003Trigger3_ = {
            alias = "Q70003Trigger3",
            script = "Actor/Gadget/Q70003Trigger3",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q70003Cat1")
        }
    }
}

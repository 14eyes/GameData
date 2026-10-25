return {
    MainID = 70825,
    ActorAlias = "70825",
    SubIDs = {
        q7082501 = 7082501,
        q7082502 = 7082502,
        q7082503 = 7082503,
        q7082504 = 7082504,
        q7082505 = 7082505,
        q7082506 = 7082506,
        q7082507 = 7082507,
        q7082508 = 7082508
    },
    Datas = {
        Q7082502Trigger_ = {
            alias = "Q7082502Trigger",
            script = "Actor/Gadget/Q7082502Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q70825Target1")
        },
        PaimonReminder02 = {
            {dialogID = 708250501, audioEvtName = "", duration = 4},
            {dialogID = 708250502, audioEvtName = "", duration = 4}
        },
        PaimonReminder04 = {
            {dialogID = 708250503, audioEvtName = "", duration = 4},
            {dialogID = 708250504, audioEvtName = "", duration = 4}
        },
        PaimonReminder06 = {
            {dialogID = 708250505, audioEvtName = "", duration = 4},
            {dialogID = 708250506, audioEvtName = "", duration = 4},
            {dialogID = 708250507, audioEvtName = "", duration = 4}
        },
        PaimonReminder08 = {{dialogID = 708250508, audioEvtName = "", duration = 4}},
        Q7082504Trigger_ = {
            alias = "Q7082504Trigger",
            script = "Actor/Gadget/Q7082504Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q70825Target2")
        },
        Q7082506Trigger_ = {
            alias = "Q7082506Trigger",
            script = "Actor/Gadget/Q7082506Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q70825Target3")
        }
    }
}

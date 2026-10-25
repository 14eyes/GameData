return {
    MainID = 20520,
    ActorAlias = "20520",
    SubIDs = {
        q2052001 = 2052001,
        q2052002 = 2052002,
        q2052003 = 2052003,
        q2052004 = 2052004,
        q2052005 = 2052005,
        q2052006 = 2052006,
        q2052007 = 2052007,
        q2052009 = 2052009,
        q2052010 = 2052010,
        q2052011 = 2052011,
        q2052008 = 2052008
    },
    Npcs = {
        Npc167201Data = {
            id = 167201,
            alias = "Npc167201",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorTable = {
            {dialogID = 205200701, audioEvtName = "", duration = 3},
            {dialogID = 205200702, audioEvtName = "", duration = 3},
            {dialogID = 205200703, audioEvtName = "", duration = 3}
        },
        NarratorTable2 = {{dialogID = 205200704, audioEvtName = "", duration = 3}},
        Q20520Trigger_ = {
            alias = "Q20520Trigger",
            script = "Actor/Gadget/Q20520Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2052008point")
        },
        Q20520Trigger2_ = {
            alias = "Q20520Trigger2",
            script = "Actor/Gadget/Q20520Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2052004point")
        }
    }
}

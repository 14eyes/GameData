return {
    MainID = 41337,
    ActorAlias = "41337",
    SubIDs = {
        q4133711 = 4133711,
        q4133701 = 4133701,
        q4133702 = 4133702,
        q4133703 = 4133703,
        q4133704 = 4133704,
        q4133705 = 4133705,
        q4133706 = 4133706,
        q4133712 = 4133712,
        q4133707 = 4133707,
        q4133713 = 4133713,
        q4133708 = 4133708,
        q4133714 = 4133714,
        q4133709 = 4133709,
        q4133715 = 4133715,
        q4133710 = 4133710
    },
    Npcs = {
        Npc240001Data = {
            id = 240001,
            alias = "Npc240001",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc241801Data = {
            id = 241801,
            alias = "Npc241801",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc207901Data = {
            id = 207901,
            alias = "Npc207901",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        Gadget70800017Data = {
            id = 70800017,
            alias = "Gadget70800017",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorTable = {
            {dialogID = 413370501, audioEvtName = "", duration = 3},
            {dialogID = 413370502, audioEvtName = "", duration = 3}
        },
        Q4133701Trigger_ = {
            alias = "Q4133701Trigger",
            script = "Actor/Gadget/Q4133701Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q41337Sunyu")
        },
        Q4133705Trigger_ = {
            alias = "Q4133705Trigger",
            script = "Actor/Gadget/Q4133705Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q41337Zhiruo0")
        },
        NarratorAfter = {{dialogID = 413371201, audioEvtName = "", duration = 3}}
    }
}

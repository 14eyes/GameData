return {
    MainID = 20051,
    ActorAlias = "20051",
    SubIDs = {
        q2005101 = 2005101,
        q2005102 = 2005102,
        q2005101 = 2005160,
        q2005102 = 2005161,
        q2005103 = 2005103,
        q2005104 = 2005104,
        q2005105 = 2005105,
        q2005106 = 2005106,
        q2005116 = 2005116,
        q2005117 = 2005117,
        q2005118 = 2005118,
        q2005119 = 2005119,
        q2005166 = 2005166,
        q2005108 = 2005108,
        q2005109 = 2005109,
        q2005110 = 2005110,
        q2005111 = 2005111,
        q2005112 = 2005112,
        q2005113 = 2005113,
        q2005114 = 2005114,
        q2005115 = 2005115,
        q2005124 = 2005124,
        q2005125 = 2005125,
        q2005107 = 2005107,
        q2005120 = 2005120,
        q2005121 = 2005121,
        q2005122 = 2005122,
        q2005123 = 2005123,
        q2005137 = 2005137,
        q2005138 = 2005138,
        q2005139 = 2005139,
        q2005140 = 2005140,
        q2005141 = 2005141,
        q2005142 = 2005142,
        q2005143 = 2005143,
        q2005144 = 2005144,
        q2005163 = 2005163,
        q2005145 = 2005145,
        q2005146 = 2005146,
        q2005147 = 2005147,
        q2005148 = 2005148,
        q2005164 = 2005164,
        q2005165 = 2005165,
        q2005149 = 2005149,
        q2005150 = 2005150,
        q2005151 = 2005151,
        q2005152 = 2005152,
        q2005153 = 2005153,
        q2005154 = 2005154,
        q2005155 = 2005155,
        q2005156 = 2005156,
        q2005157 = 2005157,
        q2005159 = 2005159,
        q2005170 = 2005170,
        q2005171 = 2005171,
        q2005172 = 2005172,
        q2005173 = 2005173,
        q2005174 = 2005174,
        q2005175 = 2005175,
        q2005176 = 2005176,
        q2005177 = 2005177,
        q2005178 = 2005178,
        q2005179 = 2005179,
        q2005180 = 2005180,
        q2005181 = 2005181,
        q2005182 = 2005182,
        q2005183 = 2005183,
        q2005184 = 2005184,
        q2005185 = 2005185,
        q2005186 = 2005186,
        q2005187 = 2005187,
        q2005188 = 2005188,
        q2005189 = 2005189,
        q2005158 = 2005158
    },
    NPC1Data = {
        Npc = "Npc140301",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 140301,
        NPCPos = sceneData:GetDummyPoint(1009, "Q20051NPCCreat").pos,
        NPCDir = sceneData:GetDummyPoint(1009, "Q20051NPCCreat").rot,
        NPCSitPos = sceneData:GetDummyPoint(1009, "Q20051NPCSit").pos
    },
    NPC2Data = {
        Npc = "Npc143101",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 143101,
        NPCPos = sceneData:GetDummyPoint(1009, "Q20051NPCCreat").pos,
        NPCDir = sceneData:GetDummyPoint(1009, "Q20051NPCCreat").rot,
        NPCSitPos = sceneData:GetDummyPoint(1009, "Q20051NPCSit").pos
    },
    NPC3Data = {
        Npc = "Npc153701",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 153701,
        NPCPos = sceneData:GetDummyPoint(1009, "Q20051NPCCreat").pos,
        NPCDir = sceneData:GetDummyPoint(1009, "Q20051NPCCreat").rot,
        NPCSitPos = sceneData:GetDummyPoint(1009, "Q20051NPCSit").pos
    },
    NPC4Data = {
        Npc = "Npc141301",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 141301,
        NPCPos = sceneData:GetDummyPoint(1009, "Q20051NPCCreat").pos,
        NPCDir = sceneData:GetDummyPoint(1009, "Q20051NPCCreat").rot,
        NPCSitPos = sceneData:GetDummyPoint(1009, "Q20051NPCSit").pos
    },
    DrinkData = {
        Alias = "Q20051DrinkCreat",
        DrinkID = 70210102,
        BornPos = sceneData:GetDummyPoint(1009, "Q20051DrinkCreat").pos,
        BornDir = sceneData:GetDummyPoint(1009, "Q20051DrinkCreat").rot
    },
    Rectification = {
        new = function(index)
            local tbl = o
            if not tbl then
                tbl = {}
            end

            o = tbl
            setmetatable(o, index)
            index.__index = index
            index.Drink = 0
            return o
        end,
        BaseLiquor = function(arg1, arg2)
            arg1.Drink = arg1.Drink - math.modf(arg1.Drink / 1000000) * 1000000
            arg1.Drink = arg1.Drink + arg2 * 1000000
            print("BaseLiquor")
            print(arg1.Drink)
        end,
        AdditionalMaterial = function(arg1, arg2)
            arg1.Drink = arg1.Drink - math.fmod(math.modf(arg1.Drink / 10000), 100) * 10000
            arg1.Drink = arg1.Drink + arg2 * 10000
            print("AdditionalMaterial")
            print(arg1.Drink)
        end,
        Step1 = function(arg1, arg2)
            arg1.Drink = arg1.Drink - math.fmod(math.modf(arg1.Drink / 1000), 10) * 1000
            arg1.Drink = arg1.Drink + arg2 * 1000
            print("Step1")
            print(arg1.Drink)
        end,
        Step2 = function(arg1, arg2)
            arg1.Drink = arg1.Drink - math.fmod(math.modf(arg1.Drink / 100), 10) * 100
            arg1.Drink = arg1.Drink + arg2 * 100
            print("Step2")
            print(arg1.Drink)
        end,
        Step3 = function(arg1, arg2)
            arg1.Drink = arg1.Drink - math.fmod(math.modf(arg1.Drink / 10), 10) * 10
            arg1.Drink = arg1.Drink + arg2 * 10
            print("Step3")
            print(arg1.Drink)
        end,
        Step4 = function(arg1, arg2)
            arg1.Drink = arg1.Drink - math.fmod(arg1.Drink, 10)
            arg1.Drink = arg1.Drink + arg2 * 1
            print("Step4")
            print(arg1.Drink)
        end
    },
    DrinkResult = {
        ["1011234"] = 100316,
        ["1023124"] = 100317,
        ["1034441"] = 100318,
        ["2041222"] = 100319,
        ["1053312"] = 100329,
        ["1021234"] = 100324,
        ["1031234"] = 100324,
        ["1041234"] = 100324,
        ["1051234"] = 100324,
        ["1061234"] = 100324,
        ["1013124"] = 100325,
        ["1033124"] = 100325,
        ["1043124"] = 100325,
        ["1053124"] = 100325,
        ["1063124"] = 100325,
        ["1014441"] = 100326,
        ["1024441"] = 100326,
        ["1044441"] = 100326,
        ["1054441"] = 100326,
        ["1064441"] = 100326,
        ["2011222"] = 100327,
        ["2021222"] = 100327,
        ["2031222"] = 100327,
        ["2051222"] = 100327,
        ["2061222"] = 100327
    },
    DrinkResult_MM = {
        ["101"] = 100320,
        ["102"] = 100321,
        ["103"] = 100322,
        ["204"] = 100323,
        ["107"] = 100328,
        ["207"] = 100328
    },
    DrinkAward = {
        ["1100316"] = 5,
        ["1100317"] = 3,
        ["1100318"] = 3,
        ["1100319"] = 4,
        ["1100320"] = 1,
        ["1100321"] = 1,
        ["1100322"] = 1,
        ["1100323"] = 1,
        ["1100324"] = 3,
        ["1100325"] = 3,
        ["1100326"] = 3,
        ["1100327"] = 3,
        ["1100328"] = 2,
        ["1100329"] = 5,
        ["1100330"] = 2,
        ["2100316"] = 3,
        ["2100317"] = 4,
        ["2100318"] = 3,
        ["2100319"] = 3,
        ["2100320"] = 3,
        ["2100321"] = 3,
        ["2100322"] = 3,
        ["2100323"] = 3,
        ["2100324"] = 1,
        ["2100325"] = 1,
        ["2100326"] = 1,
        ["2100327"] = 1,
        ["2100328"] = 2,
        ["2100329"] = 5,
        ["2100330"] = 2,
        ["3100316"] = 2,
        ["3100317"] = 4,
        ["3100318"] = 4,
        ["3100319"] = 3,
        ["3100320"] = 1,
        ["3100321"] = 1,
        ["3100322"] = 1,
        ["3100323"] = 1,
        ["3100324"] = 1,
        ["3100325"] = 1,
        ["3100326"] = 1,
        ["3100327"] = 1,
        ["3100328"] = 2,
        ["3100329"] = 5,
        ["3100330"] = 2,
        ["4100316"] = 3,
        ["4100317"] = 1,
        ["4100318"] = 1,
        ["4100319"] = 5,
        ["4100320"] = 1,
        ["4100321"] = 1,
        ["4100322"] = 1,
        ["4100323"] = 4,
        ["4100324"] = 3,
        ["4100325"] = 1,
        ["4100326"] = 1,
        ["4100327"] = 3,
        ["4100328"] = 2,
        ["4100329"] = 5,
        ["4100330"] = 2
    }
}

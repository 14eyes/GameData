local NPCUtil = {}
local NPCEventType = require("Actor/Npc/NPCEventType")
local NpcModeType = require("Actor/Npc/NpcMode/NpcModeType")

NPCUtil.NpcEventType = NPCEventType.DailyNpcEventType

function NPCUtil.GetMengdeNpcList()
    local tbl = {}
    local n = 1401
    while n <= 1569 do
        table.insert(tbl, "Npc" .. tostring(n))
    end

    return tbl
end

function NPCUtil.GetMengdeNpcListSpecial()
    local tbl = {}
    local str = "Npc1403"
    local v = "Npc1404"
    local str2 = "Npc1405"
    local str3 = "Npc1408"
    local str4 = "Npc1410"
    local str5 = "Npc1411"
    local str6 = "Npc1412"
    local str7 = "Npc1413"
    local str8 = "Npc1414"
    local str9 = "Npc1419"
    local str10 = "Npc1421"
    local str11 = "Npc1423"
    local str12 = "Npc1425"
    local str13 = "Npc1427"
    local str14 = "Npc1429"
    local str15 = "Npc1430"
    local str16 = "Npc1431"
    local str17 = "Npc1433"
    local str18 = "Npc1435"
    local str19 = "Npc1445"
    local str20 = "Npc1447"
    local str21 = "Npc1449"
    local str22 = "Npc1451"
    local str23 = "Npc1453"
    local str24 = "Npc1455"
    local str25 = "Npc1457"
    local str26 = "Npc1459"
    local str27 = "Npc1461"
    local str28 = "Npc1463"
    local str29 = "Npc1465"
    local str30 = "Npc1467"
    local str31 = "Npc1469"
    local str32 = "Npc1471"
    local str33 = "Npc1473"
    local str34 = "Npc1475"
    local str35 = "Npc1477"
    local str36 = "Npc1521"
    local str37 = "Npc1523"
    local str38 = "Npc1525"
    local str39 = "Npc1567"
    local str40 = "Npc1569"
    local str41 = "Npc1574"
    local str42 = "Npc1577"
    local str43 = "Npc1578"
    local str44 = "Npc1587"
    local str45 = "Npc1593"
    local str46 = "Npc1599"
    local str47 = "Npc1600"
    local str48 = "Npc1601"
    tbl[1] = "Npc1401"
    tbl[2] = str
    tbl[3] = v
    tbl[4] = str2
    tbl[5] = str3
    tbl[6] = str4
    tbl[7] = str5
    tbl[8] = str6
    tbl[9] = str7
    tbl[10] = str8
    tbl[11] = str9
    tbl[12] = str10
    tbl[13] = str11
    tbl[14] = str12
    tbl[15] = str13
    tbl[16] = str14
    tbl[17] = str15
    tbl[18] = str16
    tbl[19] = str17
    tbl[20] = str18
    tbl[21] = str19
    tbl[22] = str20
    tbl[23] = str21
    tbl[24] = str22
    tbl[25] = str23
    tbl[26] = str24
    tbl[27] = str25
    tbl[28] = str26
    tbl[29] = str27
    tbl[30] = str28
    tbl[31] = str29
    tbl[32] = str30
    tbl[33] = str31
    tbl[34] = str32
    tbl[35] = str33
    tbl[36] = str34
    tbl[37] = str35
    tbl[38] = str36
    tbl[39] = str37
    tbl[40] = str38
    tbl[41] = str39
    tbl[42] = str40
    tbl[43] = str41
    tbl[44] = str42
    tbl[45] = str43
    tbl[46] = str44
    tbl[47] = str45
    tbl[48] = str46
    tbl[49] = str47
    tbl[50] = str48
    local str49 = "Npc1603"
    local str50 = "Npc1604"
    local str51 = "Npc1605"
    local str52 = "Npc1606"
    local str53 = "Npc1607"
    local str54 = "Npc1638"
    local str55 = "Npc1639"
    local str56 = "Npc1640"
    local str57 = "Npc1641"
    local str58 = "Npc1642"
    local str59 = "Npc1643"
    local str60 = "Npc1644"
    local str61 = "Npc1645"
    local str62 = "Npc1660"
    local str63 = "Npc1662"
    local str64 = "Npc1661"
    local str65 = "Npc1649"
    local str66 = "Npc1648"
    tbl[51] = "Npc1602"
    tbl[52] = str49
    tbl[53] = str50
    tbl[54] = str51
    tbl[55] = str52
    tbl[56] = str53
    tbl[57] = str54
    tbl[58] = str55
    tbl[59] = str56
    tbl[60] = str57
    tbl[61] = str58
    tbl[62] = str59
    tbl[63] = str60
    tbl[64] = str61
    tbl[65] = str62
    tbl[66] = str63
    tbl[67] = str64
    tbl[68] = str65
    tbl[69] = str66
    return tbl
end

function NPCUtil.GetMengdeNpcListPublic()
    local tbl = {}
    local str = "Npc1409"
    local v = "Npc1412"
    local str2 = "Npc1413"
    local str3 = "Npc1465"
    local str4 = "Npc1475"
    local str5 = "Npc1477"
    local str6 = "Npc1523"
    local str7 = "Npc1603"
    tbl[1] = "Npc1404"
    tbl[2] = str
    tbl[3] = v
    tbl[4] = str2
    tbl[5] = str3
    tbl[6] = str4
    tbl[7] = str5
    tbl[8] = str6
    tbl[9] = str7
    return tbl
end

function NPCUtil:GetConditionData()
    local get = CS.MoleMole.ConditionData.Get()
    get.daily = self.daily
    get.mainQuestId = self.mainQuestId
    get.subQuestId = self.subQuestId
    get.questState = self.questState
    get.taskVarId = self.taskVarId
    get.taskVarIndex = self.taskVarIndex
    get.taskVarValue = self.taskVarValue
    get.taskVarOperate = self.taskVarOperate
    get.questGlobalVarId = self.questGlobalVarId
    get.questGlobalVarValue = self.questGlobalVarValue
    get.questGlobalVarOperate = self.questGlobalVarOperate
    get.sceneId = self.sceneId
    get.activityId = self.activityId
    get.activityCondId = self.activityCondId
    get.isActivityValid = self.isActivityValid
    return get
end

return NPCUtil

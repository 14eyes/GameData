require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6018 = class("Quest6018", QuestActorProxy)
Quest6018.defaultAlias = "Quest6018"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6018:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["601801"] = self.OnSubStart601801,
        ["601802"] = self.OnSubStart601802,
        ["601830"] = self.OnSubStart601830,
        ["601831"] = self.OnSubStart601831,
        ["601832"] = self.OnSubStart601832,
        ["601803"] = self.OnSubStart601803,
        ["601833"] = self.OnSubStart601833,
        ["601827"] = self.OnSubStart601827,
        ["601804"] = self.OnSubStart601804,
        ["601805"] = self.OnSubStart601805,
        ["601828"] = self.OnSubStart601828,
        ["601806"] = self.OnSubStart601806,
        ["601807"] = self.OnSubStart601807,
        ["601808"] = self.OnSubStart601808,
        ["601809"] = self.OnSubStart601809,
        ["601825"] = self.OnSubStart601825,
        ["601826"] = self.OnSubStart601826,
        ["601810"] = self.OnSubStart601810,
        ["601850"] = self.OnSubStart601850,
        ["601811"] = self.OnSubStart601811,
        ["601812"] = self.OnSubStart601812,
        ["601813"] = self.OnSubStart601813,
        ["601834"] = self.OnSubStart601834,
        ["601835"] = self.OnSubStart601835,
        ["601836"] = self.OnSubStart601836,
        ["601854"] = self.OnSubStart601854,
        ["601814"] = self.OnSubStart601814,
        ["601815"] = self.OnSubStart601815,
        ["601816"] = self.OnSubStart601816,
        ["601841"] = self.OnSubStart601841,
        ["601845"] = self.OnSubStart601845,
        ["601851"] = self.OnSubStart601851,
        ["601817"] = self.OnSubStart601817,
        ["601818"] = self.OnSubStart601818,
        ["601852"] = self.OnSubStart601852,
        ["601846"] = self.OnSubStart601846,
        ["601849"] = self.OnSubStart601849,
        ["601819"] = self.OnSubStart601819,
        ["601837"] = self.OnSubStart601837,
        ["601838"] = self.OnSubStart601838,
        ["601839"] = self.OnSubStart601839,
        ["601847"] = self.OnSubStart601847,
        ["601853"] = self.OnSubStart601853,
        ["601820"] = self.OnSubStart601820,
        ["601821"] = self.OnSubStart601821,
        ["601822"] = self.OnSubStart601822,
        ["601848"] = self.OnSubStart601848,
        ["601840"] = self.OnSubStart601840,
        ["601842"] = self.OnSubStart601842,
        ["601823"] = self.OnSubStart601823,
        ["601843"] = self.OnSubStart601843,
        ["601844"] = self.OnSubStart601844,
        ["601829"] = self.OnSubStart601829,
        ["601824"] = self.OnSubStart601824
    }
end

function Quest6018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["601801"] = self.OnSubFinish601801,
        ["601802"] = self.OnSubFinish601802,
        ["601830"] = self.OnSubFinish601830,
        ["601831"] = self.OnSubFinish601831,
        ["601832"] = self.OnSubFinish601832,
        ["601803"] = self.OnSubFinish601803,
        ["601833"] = self.OnSubFinish601833,
        ["601827"] = self.OnSubFinish601827,
        ["601804"] = self.OnSubFinish601804,
        ["601805"] = self.OnSubFinish601805,
        ["601828"] = self.OnSubFinish601828,
        ["601806"] = self.OnSubFinish601806,
        ["601807"] = self.OnSubFinish601807,
        ["601808"] = self.OnSubFinish601808,
        ["601809"] = self.OnSubFinish601809,
        ["601825"] = self.OnSubFinish601825,
        ["601826"] = self.OnSubFinish601826,
        ["601810"] = self.OnSubFinish601810,
        ["601850"] = self.OnSubFinish601850,
        ["601811"] = self.OnSubFinish601811,
        ["601812"] = self.OnSubFinish601812,
        ["601813"] = self.OnSubFinish601813,
        ["601834"] = self.OnSubFinish601834,
        ["601835"] = self.OnSubFinish601835,
        ["601836"] = self.OnSubFinish601836,
        ["601854"] = self.OnSubFinish601854,
        ["601814"] = self.OnSubFinish601814,
        ["601815"] = self.OnSubFinish601815,
        ["601816"] = self.OnSubFinish601816,
        ["601841"] = self.OnSubFinish601841,
        ["601845"] = self.OnSubFinish601845,
        ["601851"] = self.OnSubFinish601851,
        ["601817"] = self.OnSubFinish601817,
        ["601818"] = self.OnSubFinish601818,
        ["601852"] = self.OnSubFinish601852,
        ["601846"] = self.OnSubFinish601846,
        ["601849"] = self.OnSubFinish601849,
        ["601819"] = self.OnSubFinish601819,
        ["601837"] = self.OnSubFinish601837,
        ["601838"] = self.OnSubFinish601838,
        ["601839"] = self.OnSubFinish601839,
        ["601847"] = self.OnSubFinish601847,
        ["601853"] = self.OnSubFinish601853,
        ["601820"] = self.OnSubFinish601820,
        ["601821"] = self.OnSubFinish601821,
        ["601822"] = self.OnSubFinish601822,
        ["601848"] = self.OnSubFinish601848,
        ["601840"] = self.OnSubFinish601840,
        ["601842"] = self.OnSubFinish601842,
        ["601823"] = self.OnSubFinish601823,
        ["601843"] = self.OnSubFinish601843,
        ["601844"] = self.OnSubFinish601844,
        ["601829"] = self.OnSubFinish601829,
        ["601824"] = self.OnSubFinish601824
    }
end

function Quest6018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6018:Start()
    print("Start")
end

function Quest6018:OnDestroy()
    print("OnDestroy")
end

function Quest6018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6018:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q601803Trigger")
    this:ActorDestroy("Q601808Trigger")
    this:ActorDestroy("Q601825Trigger")
    this:ActorDestroy("Q601810Trigger")
    this:ActorDestroy("Q601814Trigger")
    this:ActorDestroy("Q601816Trigger")
    this:ActorDestroy("Q601818Trigger")
    this:ActorDestroy("Q601843Trigger")
    this:ActorDestroy("Q601814Trigger_1")
    this:ActorDestroy("Q601842Trigger")
    this:ActorDestroy("Q601843Trigger_1")
end

function Quest6018:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 601806 then
        actorUtils.FinishQuestID(false, 601817)
    elseif arg1 == 601807 then
        actorUtils.FinishQuestID(false, 601846)
    elseif arg1 == 601818 then
        if actorUtils.GetAvatarPos().z < 256 then
            actorUtils.FinishQuestID(false, 601834)
        else
            actorUtils.FinishQuestID(false, 601835)
        end
    elseif arg1 == 6018072 then
        actorUtils.FinishQuestID(false, 601849)
    elseif arg1 == 601808 then
        actorUtils.FinishQuestID(false, 601848)
    elseif arg1 == 601822 then
        actorUtils.FinishQuestID(false, 601839)
    elseif arg1 == 601820 then
        actorUtils.FinishQuestID(false, 601837)
    elseif arg1 == 601824 then
        actorUtils.FinishQuestID(false, 601820)
    elseif arg1 == 6018181 then
        this:DeployStoryByQuest(110601806)
    elseif arg1 == 6018182 then
        this:DeployStoryByQuest(110601805)
    end
end

function Quest6018:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6018:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest6018:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6018:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6018:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6018:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6018:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest6018:CreateRerirFile()
    local n = 73095003
    local v = 20280
    for i, value in ipairs({
        {1, {x = 180.5788, y = 37.232, z = 255.78}, {x = 270.0, y = 270.0, z = 0.0}, 9},
        {2, {x = 180.9001, y = 37.261, z = 256.4184}, {x = 270.0, y = 280.12, z = 0.0}, 3},
        {3, {x = 180.8931, y = 37.26, z = 256.4305}, {x = 270.0, y = 256.41, z = 0.0}, 1},
        {4, {x = 180.8858, y = 37.259, z = 256.4434}, {x = 270.0, y = 270.0, z = 0.0}, 4},
        {5, {x = 180.8848, y = 37.258, z = 256.4426}, {x = 270.0, y = 252.19, z = 0.0}, 5},
        {6, {x = 180.8662, y = 37.257, z = 256.3798}, {x = 270.0, y = 286.25, z = 0.0}, 6},
        {7, {x = 180.8911, y = 37.256, z = 256.4064}, {x = 270.0, y = 254.0, z = 0.0}, 8},
        {8, {x = 180.9315, y = 37.255, z = 256.3679}, {x = 270.0, y = 285.15, z = 0.0}, 7},
        {9, {x = 180.8977, y = 37.254, z = 256.4225}, {x = 270.0, y = 270.0, z = 0.0}, 10},
        {10, {x = 180.8855, y = 37.253, z = 256.4168}, {x = 270.0, y = 262.12, z = 0.0}, 11},
        {11, {x = 180.9003, y = 37.252, z = 256.3911}, {x = 270.0, y = 258.3, z = 0.0}, 4},
        {12, {x = 180.8652, y = 37.251, z = 256.4136}, {x = 270.0, y = 257.3, z = 0.0}, 10},
        {13, {x = 180.872, y = 37.25, z = 256.41717}, {x = 270.0, y = 269.2, z = 0.0}, 11},
        {14, {x = 180.8827, y = 37.249, z = 256.4322}, {x = 270.0, y = 283.4, z = 0.0}, 8},
        {15, {x = 180.8615, y = 37.248, z = 256.4436}, {x = 270.0, y = 249.9, z = 0.0}, 7},
        {16, {x = 180.8957, y = 37.247, z = 256.4543}, {x = 270.0, y = 260.1, z = 0.0}, 11},
        {17, {x = 180.8775, y = 37.246, z = 256.4258}, {x = 270.0, y = 278.1, z = 0.0}, 4},
        {18, {x = 180.8479, y = 37.245, z = 256.4243}, {x = 270.0, y = 268.2, z = 0.0}, 7},
        {19, {x = 180.8121, y = 37.244, z = 256.3852}, {x = 270.0, y = 252.5, z = 0.0}, 10},
        {20, {x = 180.8636, y = 37.243, z = 256.4338}, {x = 270.0, y = 283.8, z = 0.0}, 8},
        {21, {x = 180.8322, y = 37.242, z = 256.4178}, {x = 270.0, y = 270.8, z = 0.0}, 7},
        {22, {x = 180.8526, y = 37.241, z = 256.4374}, {x = 270.0, y = 263.3, z = 0.0}, 4},
        {23, {x = 180.8316, y = 37.24, z = 256.4566}, {x = 270.0, y = 253.8, z = 0.0}, 10},
        {24, {x = 180.8355, y = 37.239, z = 256.43}, {x = 270.0, y = 266.8, z = 0.0}, 8},
        {25, {x = 180.8348, y = 37.238, z = 256.407}, {x = 270.0, y = 259.3, z = 0.0}, 7},
        {26, {x = 180.8316, y = 37.237, z = 256.4566}, {x = 270.0, y = 281.9, z = 0.0}, 11},
        {27, {x = 180.8089, y = 37.236, z = 256.4166}, {x = 270.0, y = 267.7, z = 0.0}, 4},
        {28, {x = 180.7952, y = 37.235, z = 256.4504}, {x = 270.0, y = 259.7, z = 0.0}, 8}
    }) do
        local str = tostring(value[1])
        local v2 = value[2]
        local v3 = value[3]
        local v4 = value[4]
        self:CreateLocalGadget(n, str, v2, v3, v, {"GV_ContextInfo"}, {v4}, false, 0, true)
    end
end

function Quest6018:OnSubStart601801(arg1)
    print("OnSubStart601801")
    this:NpcCreateWithNoBlack(npcs.Npc1315.id, 0, 15, 601801, true, 601828)
end

function Quest6018:OnSubFinish601801(arg1)
    print("OnSubFinish601801")
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6018:OnSubStart601802(arg1)
    print("OnSubStart601802")
    this:CreateQuestNpc(arg1, npcs.Npc1022.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1310.id, 0, 601802, 40, true)
end

function Quest6018:OnSubFinish601802(arg1)
    print("OnSubFinish601802")
end

function Quest6018:OnSubStart601830(arg1)
    print("OnSubStart601830")
end

function Quest6018:OnSubFinish601830(arg1)
    print("OnSubFinish601830")
end

function Quest6018:OnSubStart601831(arg1)
    print("OnSubStart601831")
end

function Quest6018:OnSubFinish601831(arg1)
    print("OnSubFinish601831")
end

function Quest6018:OnSubStart601832(arg1)
    print("OnSubStart601832")
end

function Quest6018:OnSubFinish601832(arg1)
    print("OnSubFinish601832")
end

function Quest6018:OnSubStart601803(arg1)
    print("OnSubStart601803")
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6018):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6018):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1022.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1022.alias, 6018):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 6018):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 6018):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 6018):DoFreeStyle(1110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 6018):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1318.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 6018):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6018):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15833.id, 0, false, 0)
    this:CreateLocalGadget(71700379, "1", {x = -17.459, y = 0.506, z = 18.066}, {x = 0, y = 0, z = 0}, 1153, nil, nil, false, 0, true)
end

function Quest6018:OnSubFinish601803(arg1)
    print("OnSubFinish601803")
    this:NpcDestroyImmediately(1153, npcs.Npc15833.alias)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 60180199, false, true)
    this:RemoveLocalGadget(71700379, "1")
end

function Quest6018:OnSubStart601833(arg1)
    print("OnSubStart601833")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601833, 0, 30, 1, npcs.Npc1315.id)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6018):DoFreeStyle(1121, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6018):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1022.alias, 6018):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 6018):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 6018):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 6018):DoFreeStyle(1110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 6018):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 6018):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6018):DisableInteeHeadCtrl(true)
end

function Quest6018:OnSubFinish601833(arg1)
    print("OnSubFinish601833")
    this:NpcDestroyImmediately(1153, npcs.Npc1315.alias)
    this:NpcDestroyImmediately(1153, npcs.Npc1018.alias)
    this:NpcDestroyImmediately(1153, npcs.Npc1022.alias)
    this:NpcDestroyImmediately(1153, npcs.Npc1310.alias)
    this:NpcDestroyImmediately(1153, npcs.Npc1314.alias)
    this:NpcDestroyImmediately(1153, npcs.Npc1318.alias)
    this:NpcDestroyImmediately(1153, npcs.Npc1320.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6018:OnSubStart601827(arg1)
    print("OnSubStart601827")
end

function Quest6018:OnSubFinish601827(arg1)
    print("OnSubFinish601827")
end

function Quest6018:OnSubStart601804(arg1)
    print("OnSubStart601804")
    this:NpcCreateWithNoBlack(npcs.Npc1316.id, 0, 7, 601804, true, 601804)
end

function Quest6018:OnSubFinish601804(arg1)
    print("OnSubFinish601804")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
    globalActor:PlayerEnterDungeon(2, 1261, true, nil, 0)
end

function Quest6018:OnSubStart601805(arg1)
    print("OnSubStart601805")
    local tbl = {}
    local str = "Q601807N15711Trigger"
    local v = "Q601808N15692Trigger"
    local str2 = "Q601814N15833Trigger"
    local str3 = "Q601815N15795Trigger"
    tbl[1] = "Q601828N1316Trigger"
    tbl[2] = str
    tbl[3] = v
    tbl[4] = str2
    tbl[5] = str3
    for i = 1, #tbl do
        self:ActorDestroy(tbl[i])
    end

    local tbl2 = {}
    local n = 15705
    local n2 = 15706
    local n3 = 15707
    local n4 = 15708
    local n5 = 15709
    local n6 = 15711
    local n7 = 15692
    local n8 = 15713
    local n9 = 15714
    local n10 = 15833
    local n11 = 15795
    tbl2[1] = 1316
    tbl2[2] = n
    tbl2[3] = n2
    tbl2[4] = n3
    tbl2[5] = n4
    tbl2[6] = n5
    tbl2[7] = n6
    tbl2[8] = n7
    tbl2[9] = n8
    tbl2[10] = n9
    tbl2[11] = n10
    tbl2[12] = n11
    for i = 1, #tbl2 do
        local str4 = "Npc" .. tbl2[i]
        self:DestroyQuestNpcActor(str4, 20280)
    end

    local tbl3 = {}
    local str4 = "Q601809"
    local str5 = "Q601826_2"
    tbl3[1] = "Q601808"
    tbl3[2] = str4
    tbl3[3] = str5
    for i = 1, #tbl3 do
        self:UnCallDelayByQuest(tbl3[i])
    end

    local tbl4 = {}
    local tbl5 = {}
    local str6 = "601809"
    tbl5[1] = 73097022
    tbl5[2] = str6
    local tbl6 = {}
    local str7 = "601826"
    tbl6[1] = 73097022
    tbl6[2] = str7
    local tbl7 = {}
    local str8 = "601834"
    tbl7[1] = 73097022
    tbl7[2] = str8
    local tbl8 = {}
    local str9 = "601835"
    tbl8[1] = 73097022
    tbl8[2] = str9
    tbl4[1] = tbl5
    tbl4[2] = tbl6
    tbl4[3] = tbl7
    tbl4[4] = tbl8
    for i, value in ipairs(tbl4) do
        self:RemoveLocalGadget(value[1], value[2])
    end

    for i = 1, 28 do
        local str10 = tostring(i)
        self:RemoveLocalGadget(73095003, str10)
    end

    self:CancelAllStory()
    self:ClearNarratorTask()
    this:SetQuestVarByMainId(0, 0)
end

function Quest6018:OnSubFinish601805(arg1)
    print("OnSubFinish601805")
end

function Quest6018:OnSubStart601828(arg1)
    print("OnSubStart601828")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1316.id, 0, 601828, 30, true)
    this:CreateRerirFile()
    this:SetNavigationByMainId(6018, true)
end

function Quest6018:OnSubFinish601828(arg1)
    print("OnSubFinish601828")
    this:NpcDestroyImmediately(20280, npcs.Npc1316.alias)
end

function Quest6018:OnSubStart601806(arg1)
    print("OnSubStart601806")
    this:CreateQuestNpc(arg1, npcs.Npc15705.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15706.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15707.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15709.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15708.id, 0, false, 0)
    this:DeployStoryByQuest(110601801)
    this:CreateRerirFile()
end

function Quest6018:OnSubFinish601806(arg1)
    print("OnSubFinish601806")
    this:CancelStoryByQuest(110601801)
end

function Quest6018:OnSubStart601807(arg1)
    print("OnSubStart601807")
    this:NpcCreateWithNpcTrigger(npcs.Npc15711.id, 0, 10, 601807)
end

function Quest6018:OnSubFinish601807(arg1)
    print("OnSubFinish601807")
    this:NpcDestroyImmediately(20280, npcs.Npc15711.alias)
    for i = 1, 28 do
        local str = tostring(i)
        self:RemoveLocalGadget(73095003, str)
    end
end

function Quest6018:OnSubStart601808(arg1)
    print("OnSubStart601808")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601808, 0, 10, 1, npcs.Npc15692.id)
    self:CreateLocalGadget(73095003, "1", {x = 180.626, y = 37.232, z = 255.791}, {x = 270.0, y = 281.9, z = 0.0}, 20280, {"GV_ContextInfo"}, {8}, false, 0, true)
    self:CreateLocalGadget(73095003, "2", {x = 180.655, y = 37.233, z = 255.765}, {x = 270.0, y = 259.3, z = 0.0}, 20280, {"GV_ContextInfo"}, {4}, false, 0, true)
    self:CreateLocalGadget(73095003, "3", {x = 180.644, y = 37.234, z = 255.732}, {x = 270.0, y = 289.5, z = 0.0}, 20280, {"GV_ContextInfo"}, {7}, false, 0, true)
    self:CreateLocalGadget(73095003, "4", {x = 180.613, y = 37.235, z = 255.811}, {x = 270.0, y = 243.3, z = 0.0}, 20280, {"GV_ContextInfo"}, {11}, false, 0, true)
    self:CreateLocalGadget(73095003, "5", {x = 180.626, y = 37.236, z = 255.828}, {x = 270.0, y = 272.9, z = 0.0}, 20280, {"GV_ContextInfo"}, {10}, false, 201, true)
end

function Quest6018:OnSubFinish601808(arg1)
    print("OnSubFinish601808")
    this:NpcDestroyImmediately(20280, npcs.Npc15705.alias)
    this:NpcDestroyImmediately(20280, npcs.Npc15706.alias)
    this:NpcDestroyImmediately(20280, npcs.Npc15707.alias)
    this:NpcDestroyImmediately(20280, npcs.Npc15709.alias)
    this:NpcDestroyImmediately(20280, npcs.Npc15692.alias)
    this:NpcDestroyImmediately(20280, npcs.Npc15708.alias)
    this:RemoveLocalGadget(73095003, "1")
    this:RemoveLocalGadget(73095003, "2")
    this:RemoveLocalGadget(73095003, "3")
    this:RemoveLocalGadget(73095003, "4")
    this:RemoveLocalGadget(73095003, "5")
    this:CallDelayByQuest("Q601808", 2, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_601801, nil)
        this:EnterSceneLookCamera({x = 112.723, y = 37.665, z = 245.33}, 0, 4, true, false)
    end)
end

function Quest6018:OnSubStart601809(arg1)
    print("OnSubStart601809")
    this:CreateQuestNpc(arg1, npcs.Npc15713.id, 0, false, 0)
    this:CallDelayByQuest("Q601809", 2, function(arg1)
        this:CreateLocalGadget(73097022, "601809", {x = 112.723, y = 36.462, z = 245.33}, {x = 0, y = 0, z = 0}, 20280, nil, nil, false, 0, true)
    end)
end

function Quest6018:OnSubFinish601809(arg1)
    print("OnSubFinish601809")
    this:NpcDestroyImmediately(20280, npcs.Npc15713.alias)
    this:RemoveLocalGadget(73097022, "601809")
    this:ClearNarratorTask()
end

function Quest6018:OnSubStart601825(arg1)
    print("OnSubStart601825")
    this:DeployStoryByQuest(110601803)
end

function Quest6018:OnSubFinish601825(arg1)
    print("OnSubFinish601825")
end

function Quest6018:OnSubStart601826(arg1)
    print("OnSubStart601826")
    this:CreateQuestNpc(arg1, npcs.Npc15713.id, 0, false, 0)
    this:CreateLocalGadget(73097022, "601826", {x = 156.97, y = 36.384, z = 245.565}, {x = 0, y = 0, z = 0}, 20280, nil, nil, true, 0, true)
end

function Quest6018:OnSubFinish601826(arg1)
    print("OnSubFinish601826")
    this:NpcDestroyImmediately(20280, npcs.Npc15713.alias)
    this:CallDelayByQuest("Q601826_2", 2, function(arg1)
        this:RemoveLocalGadget(73097022, "601826")
        this:CancelStoryByQuest(110601803)
    end)
end

function Quest6018:OnSubStart601810(arg1)
    print("OnSubStart601810")
    this:CancelStoryByQuest(110601802)
end

function Quest6018:OnSubFinish601810(arg1)
    print("OnSubFinish601810")
end

function Quest6018:OnSubStart601850(arg1)
    print("OnSubStart601850")
end

function Quest6018:OnSubFinish601850(arg1)
    print("OnSubFinish601850")
end

function Quest6018:OnSubStart601811(arg1)
    print("OnSubStart601811")
    this:DeployStoryByQuest(110601802)
end

function Quest6018:OnSubFinish601811(arg1)
    print("OnSubFinish601811")
end

function Quest6018:OnSubStart601812(arg1)
    print("OnSubStart601812")
end

function Quest6018:OnSubFinish601812(arg1)
    print("OnSubFinish601812")
end

function Quest6018:OnSubStart601813(arg1)
    print("OnSubStart601813")
end

function Quest6018:OnSubFinish601813(arg1)
    print("OnSubFinish601813")
end

function Quest6018:OnSubStart601834(arg1)
    print("OnSubStart601834")
    this:CreateQuestNpc(arg1, npcs.Npc15713.id, 0, false, 0)
    this:CreateLocalGadget(73097022, "601834", {x = 281.946, y = 34.275, z = 251.421}, {x = 0, y = 0, z = 0}, 20280, nil, nil, true, 0, true)
end

function Quest6018:OnSubFinish601834(arg1)
    print("OnSubFinish601834")
    this:NpcDestroyImmediately(20280, npcs.Npc15713.alias)
    this:RemoveLocalGadget(73097022, "601834")
    this:SetQuestVarByMainId(0, 1)
    this:DeployStoryByQuest(110601805)
end

function Quest6018:OnSubStart601835(arg1)
    print("OnSubStart601835")
    this:CreateQuestNpc(arg1, npcs.Npc15714.id, 0, false, 0)
    this:CreateLocalGadget(73097022, "601835", {x = 281.864, y = 34.335, z = 260.548}, {x = 0, y = 0, z = 0}, 20280, nil, nil, true, 0, true)
end

function Quest6018:OnSubFinish601835(arg1)
    print("OnSubFinish601835")
    this:NpcDestroyImmediately(20280, npcs.Npc15714.alias)
    this:RemoveLocalGadget(73097022, "601835")
    this:SetQuestVarByMainId(0, 1)
    this:DeployStoryByQuest(110601805)
end

function Quest6018:OnSubStart601836(arg1)
    print("OnSubStart601836")
    this:DeployStoryByQuest(110601805)
end

function Quest6018:OnSubFinish601836(arg1)
    print("OnSubFinish601836")
    this:CancelStoryByQuest(110601802)
end

function Quest6018:OnSubStart601854(arg1)
    print("OnSubStart601854")
    this:DeployStoryByQuest(110601804)
end

function Quest6018:OnSubFinish601854(arg1)
    print("OnSubFinish601854")
end

function Quest6018:OnSubStart601814(arg1)
    print("OnSubStart601814")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601814, 0, 8, 1, npcs.Npc15833.id)
    self:CreateLocalGadget(73095003, "1", {x = 181.103, y = 37.232, z = 256.91}, {x = 270, y = -123.089, z = 0}, 20280, {"GV_ContextInfo"}, {5}, false, 0, true)
    self:CreateLocalGadget(73095003, "2", {x = 181.103, y = 37.233, z = 256.91}, {x = 270, y = -109.07, z = 0}, 20280, {"GV_ContextInfo"}, {8}, false, 0, true)
    self:CreateLocalGadget(73095003, "3", {x = 181.091, y = 37.235, z = 256.84}, {x = 270, y = -70.11301, z = 0.0}, 20280, {"GV_ContextInfo"}, {9}, false, 0, true)
    self:CreateLocalGadget(73095003, "4", {x = 180.635, y = 37.233, z = 256.19}, {x = 270, y = 270, z = 0.0}, 20280, {"GV_ContextInfo"}, {3}, false, 0, true)
    self:CreateLocalGadget(73095003, "5", {x = 180.7413, y = 37.234, z = 256.83}, {x = 270, y = 270, z = 0.0}, 20280, {"GV_ContextInfo"}, {12}, false, 0, true)
end

function Quest6018:OnSubFinish601814(arg1)
    print("OnSubFinish601814")
    this:NpcDestroyImmediately(20280, npcs.Npc15833.alias)
    this:CancelStoryByQuest(110601804)
end

function Quest6018:OnSubStart601815(arg1)
    print("OnSubStart601815")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601815, 0, 10, 1, npcs.Npc15795.id)
    self:CreateLocalGadget(73095003, "1", {x = 181.103, y = 37.232, z = 256.91}, {x = 270, y = -123.089, z = 0}, 20280, {"GV_ContextInfo"}, {5}, false, 0, true)
    self:CreateLocalGadget(73095003, "2", {x = 181.103, y = 37.233, z = 256.91}, {x = 270, y = -109.07, z = 0}, 20280, {"GV_ContextInfo"}, {8}, false, 0, true)
    self:CreateLocalGadget(73095003, "3", {x = 181.091, y = 37.234, z = 256.84}, {x = 270, y = -70.11301, z = 0.0}, 20280, {"GV_ContextInfo"}, {9}, false, 0, true)
    self:CreateLocalGadget(73095003, "4", {x = 180.635, y = 37.233, z = 256.19}, {x = 270, y = 270, z = 0.0}, 20280, {"GV_ContextInfo"}, {3}, false, 0, true)
    self:CreateLocalGadget(73095003, "5", {x = 180.6, y = 37.234, z = 256.2}, {x = 270, y = 270, z = 0.0}, 20280, {"GV_ContextInfo"}, {12}, false, 0, true)
end

function Quest6018:OnSubFinish601815(arg1)
    print("OnSubFinish601815")
    for i = 1, 5 do
        local str = tostring(i)
        self:RemoveLocalGadget(73095003, str)
    end

    this:NpcDestroyImmediately(20280, npcs.Npc15795.alias)
    globalActor:PlayerEnterDungeon(1, 1271, true, nil, 0)
end

function Quest6018:OnSubStart601816(arg1)
    print("OnSubStart601816")
    this:ActorDestroy("Q601841N15713Trigger")
    this:ActorDestroy("Q601817N15713Trigger")
    this:ActorDestroy("Q601846N15713Trigger")
    this:ActorDestroy("Q601837N15713Trigger")
    this:ActorDestroy("Q601839N15713Trigger")
    this:ActorDestroy("Q601820N15713Trigger")
    this:ActorDestroy("Q601822N15713Trigger")
    this:DestroyQuestNpcActor(npcs.Npc15713.alias, 20291)
end

function Quest6018:OnSubFinish601816(arg1)
    print("OnSubFinish601816")
end

function Quest6018:OnSubStart601841(arg1)
    print("OnSubStart601841")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15713.id, 0, 601841, 15, true)
end

function Quest6018:OnSubFinish601841(arg1)
    print("OnSubFinish601841")
    this:NpcDestroyImmediately(20291, npcs.Npc15713.alias)
    if self.GetQuestVar(self, 601841, 2) < 1 then
        self.ActionSafeCall(self, function()
            self:ShowTutorialDialog(2425)
        end)

        self.SetQuestVarByMainId(self, 2, 1)
    end
end

function Quest6018:OnSubStart601845(arg1)
    print("OnSubStart601845")
    this:SetNavigationByMainId(6018, true)
end

function Quest6018:OnSubFinish601845(arg1)
    print("OnSubFinish601845")
end

function Quest6018:OnSubStart601851(arg1)
    print("OnSubStart601851")
    if self:GetSubQuestState(601817) == 3 then
        actorUtils.FinishQuestID(false, 601851)
    end
end

function Quest6018:OnSubFinish601851(arg1)
    print("OnSubFinish601851")
    if self.GetQuestVar(self, 601851, 2) < 2 then
        self.ActionSafeCall(self, function()
            self:ShowTutorialDialog(2426)
        end)

        self.SetQuestVarByMainId(self, 2, 2)
    end
end

function Quest6018:OnSubStart601817(arg1)
    print("OnSubStart601817")
    this:NpcCreateWithNpcTrigger(npcs.Npc15713.id, 0, 10, 601817)
end

function Quest6018:OnSubFinish601817(arg1)
    print("OnSubFinish601817")
    this:NpcDestroyImmediately(20291, npcs.Npc15713.alias)
end

function Quest6018:OnSubStart601818(arg1)
    print("OnSubStart601818")
end

function Quest6018:OnSubFinish601818(arg1)
    print("OnSubFinish601818")
end

function Quest6018:OnSubStart601852(arg1)
    print("OnSubStart601852")
    if self:GetSubQuestState(601846) == 3 then
        actorUtils.FinishQuestID(false, 601852)
    end
end

function Quest6018:OnSubFinish601852(arg1)
    print("OnSubFinish601852")
    if self.GetQuestVar(self, 601852, 2) < 3 then
        self.ActionSafeCall(self, function()
            self:ShowTutorialDialog(2427)
        end)

        self.SetQuestVarByMainId(self, 2, 3)
    end
end

function Quest6018:OnSubStart601846(arg1)
    print("OnSubStart601846")
    this:NpcCreateWithNpcTrigger(npcs.Npc15713.id, 0, 10, 601846)
end

function Quest6018:OnSubFinish601846(arg1)
    print("OnSubFinish601846")
    this:NpcDestroyImmediately(20291, npcs.Npc15713.alias)
end

function Quest6018:OnSubStart601849(arg1)
    print("OnSubStart601849")
end

function Quest6018:OnSubFinish601849(arg1)
    print("OnSubFinish601849")
end

function Quest6018:OnSubStart601819(arg1)
    print("OnSubStart601819")
end

function Quest6018:OnSubFinish601819(arg1)
    print("OnSubFinish601819")
end

function Quest6018:OnSubStart601837(arg1)
    print("OnSubStart601837")
    this:NpcCreateWithNpcTrigger(npcs.Npc15713.id, 0, 10, 601837)
end

function Quest6018:OnSubFinish601837(arg1)
    print("OnSubFinish601837")
    this:NpcDestroyImmediately(20291, npcs.Npc15713.alias)
end

function Quest6018:OnSubStart601838(arg1)
    print("OnSubStart601838")
end

function Quest6018:OnSubFinish601838(arg1)
    print("OnSubFinish601838")
end

function Quest6018:OnSubStart601839(arg1)
    print("OnSubStart601839")
    this:NpcCreateWithNpcTrigger(npcs.Npc15713.id, 0, 10, 601839)
end

function Quest6018:OnSubFinish601839(arg1)
    print("OnSubFinish601839")
    this:NpcDestroyImmediately(20291, npcs.Npc15713.alias)
end

function Quest6018:OnSubStart601847(arg1)
    print("OnSubStart601847")
end

function Quest6018:OnSubFinish601847(arg1)
    print("OnSubFinish601847")
end

function Quest6018:OnSubStart601853(arg1)
    print("OnSubStart601853")
    if self:GetSubQuestState(601820) == 3 then
        actorUtils.FinishQuestID(false, 601853)
    end
end

function Quest6018:OnSubFinish601853(arg1)
    print("OnSubFinish601853")
end

function Quest6018:OnSubStart601820(arg1)
    print("OnSubStart601820")
    this:NpcCreateWithNpcTrigger(npcs.Npc15713.id, 0, 10, 601820)
end

function Quest6018:OnSubFinish601820(arg1)
    print("OnSubFinish601820")
    this:NpcDestroyImmediately(20291, npcs.Npc15713.alias)
end

function Quest6018:OnSubStart601821(arg1)
    print("OnSubStart601821")
end

function Quest6018:OnSubFinish601821(arg1)
    print("OnSubFinish601821")
end

function Quest6018:OnSubStart601822(arg1)
    print("OnSubStart601822")
    this:NpcCreateWithNpcTrigger(npcs.Npc15713.id, 0, 10, 601822)
end

function Quest6018:OnSubFinish601822(arg1)
    print("OnSubFinish601822")
    this:NpcDestroyImmediately(20291, npcs.Npc15713.alias)
    globalActor:PlayerEnterDungeon(1, 1275, true, nil, 0)
end

function Quest6018:OnSubStart601848(arg1)
    print("OnSubStart601848")
end

function Quest6018:OnSubFinish601848(arg1)
    print("OnSubFinish601848")
end

function Quest6018:OnSubStart601840(arg1)
    print("OnSubStart601840")
    this:ActorDestroy("Q601823N15833Trigger")
    this:ActorDestroy("Q601843Trigger")
    this:ActorDestroy("Q601829N15713Trigger")
    this:DestroyQuestNpcActor(npcs.Npc15833.alias, 20295)
    this:DestroyQuestNpcActor(npcs.Npc15713.alias, 20295)
    this:DestroyQuestNpcActor(npcs.Npc1316.alias, 20295)
    this:ActorDestroy("Q601824N1316Trigger")
    this:ClearNarratorTask()
    this:UnCallDelayByQuest("Q601823N15833CallDelay")
    this:ActorDestroy("Q601842Trigger")
    this:RemoveLocalGadget(73097022, "601829")
    this:RemoveLocalGadget(73097036, "601829")
    this:ActorDestroy("Q601843Trigger_1")
end

function Quest6018:OnSubFinish601840(arg1)
    print("OnSubFinish601840")
end

function Quest6018:OnSubStart601842(arg1)
    print("OnSubStart601842")
    this:SetNavigationByMainId(6018, true)
    actorMgr:CreateActorWithPos("Q601842Trigger", "Actor/Gadget/Q601842Trigger", 70900002, 0, points._Q601842TriggerPoint_.pos, points._Q601842TriggerPoint_.rot, true, false, 20295)
end

function Quest6018:OnSubFinish601842(arg1)
    print("OnSubFinish601842")
    this:ActorDestroy("Q601842Trigger")
end

function Quest6018:OnSubStart601823(arg1)
    print("OnSubStart601823")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(601823, 0, 30, 0, npcs.Npc15833.id)
end

function Quest6018:OnSubFinish601823(arg1)
    print("OnSubFinish601823")
    this:NpcDestroyImmediately(20295, npcs.Npc15720.alias)
    this:NpcDestroyImmediately(20295, npcs.Npc15833.alias)
    this:ClearNarratorTask()
end

function Quest6018:OnSubStart601843(arg1)
    print("OnSubStart601843")
    actorMgr:CreateActorWithPos("Q601843Trigger", "Actor/Gadget/Q601843Trigger", 70900002, 0, points._Q601843TriggerPoint_.pos, points._Q601843TriggerPoint_.rot, true, false, 20295)
    actorMgr:CreateActorWithPos("Q601843Trigger_1", "Actor/Gadget/Q601843Trigger_1", 70900002, 0, points._Q601843Trigger_1Point_.pos, points._Q601843Trigger_1Point_.rot, true, false, 20295)
end

function Quest6018:OnSubFinish601843(arg1)
    print("OnSubFinish601843")
    this:ActorDestroy("Q601843Trigger")
    this:ActorDestroy("Q601843Trigger_1")
end

function Quest6018:OnSubStart601844(arg1)
    print("OnSubStart601844")
end

function Quest6018:OnSubFinish601844(arg1)
    print("OnSubFinish601844")
end

function Quest6018:OnSubStart601829(arg1)
    print("OnSubStart601829")
    this:CreateQuestNpc(arg1, npcs.Npc15713.id, 0, false, 0)
    this:CreateLocalGadget(73097022, "601829", {x = 648.353, y = 69.189, z = 487.395}, {x = 0, y = 0, z = 0}, 20295, nil, nil, false, 0, true)
    this:CreateLocalGadget(73097036, "601829", {x = 648.353, y = 69.189, z = 487.395}, {x = 0, y = 0, z = 0}, 20295, nil, nil, false, 0, true)
end

function Quest6018:OnSubFinish601829(arg1)
    print("OnSubFinish601829")
    this:NpcDestroyImmediately(20295, npcs.Npc15713.alias)
    this:RemoveLocalGadget(73097022, "601829")
    this:RemoveLocalGadget(73097036, "601829")
end

function Quest6018:OnSubStart601824(arg1)
    print("OnSubStart601824")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1316.id, 0, 601824, 30, true)
end

function Quest6018:OnSubFinish601824(arg1)
    print("OnSubFinish601824")
    this:NpcDestroyImmediately(20295, npcs.Npc1316.alias)
end

return Quest6018

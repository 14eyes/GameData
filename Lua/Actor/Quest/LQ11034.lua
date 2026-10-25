require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11034 = class("Quest11034", QuestActorProxy)
Quest11034.defaultAlias = "Quest11034"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest11034:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest11034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1103401"] = self.OnSubStart1103401,
        ["1103402"] = self.OnSubStart1103402,
        ["1103406"] = self.OnSubStart1103406,
        ["1103403"] = self.OnSubStart1103403,
        ["1103407"] = self.OnSubStart1103407,
        ["1103410"] = self.OnSubStart1103410,
        ["1103408"] = self.OnSubStart1103408,
        ["1103404"] = self.OnSubStart1103404,
        ["1103405"] = self.OnSubStart1103405
    }
end

function Quest11034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1103401"] = self.OnSubFinish1103401,
        ["1103402"] = self.OnSubFinish1103402,
        ["1103406"] = self.OnSubFinish1103406,
        ["1103403"] = self.OnSubFinish1103403,
        ["1103407"] = self.OnSubFinish1103407,
        ["1103410"] = self.OnSubFinish1103410,
        ["1103408"] = self.OnSubFinish1103408,
        ["1103404"] = self.OnSubFinish1103404,
        ["1103405"] = self.OnSubFinish1103405
    }
end

function Quest11034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1103401"] = self.OnSubFailed1103401,
        ["1103402"] = self.OnSubFailed1103402,
        ["1103406"] = self.OnSubFailed1103406,
        ["1103403"] = self.OnSubFailed1103403,
        ["1103407"] = self.OnSubFailed1103407,
        ["1103410"] = self.OnSubFailed1103410,
        ["1103408"] = self.OnSubFailed1103408,
        ["1103404"] = self.OnSubFailed1103404,
        ["1103405"] = self.OnSubFailed1103405
    }
end

function Quest11034:Start()
    print("Start")
end

function Quest11034:OnDestroy()
    print("OnDestroy")
end

function Quest11034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11034:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:SetWeather("BigWorld/Weather_Storm")
        actorMgr:CreateActorWithPos("Q1103404_Trigger1", "Actor/Gadget/Q1103404_Trigger1", 70900002, 0, points.Q1103404_Trigger1_Point.pos, points.Q1103404_Trigger1_Point.rot, true, false, 3)
    elseif arg1 == 2 then
        self:CancelWeather()
    end
end

function Quest11034:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest11034:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest11034:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest11034:WanminAutomos()
    local tbl = {}
    local str = "Npc13948"
    local v = "Npc13911"
    local str2 = "Npc13949"
    local str3 = "Npc13947"
    local str4 = "Npc13950"
    local str5 = "Npc13892"
    local str6 = "Npc13912"
    tbl[1] = "Npc13910"
    tbl[2] = str
    tbl[3] = v
    tbl[4] = str2
    tbl[5] = str3
    tbl[6] = str4
    tbl[7] = str5
    tbl[8] = str6
    local tbl2 = {}
    local n = 8040
    local n2 = 8041
    local n3 = 8060
    tbl2[1] = 8010
    tbl2[2] = n
    tbl2[3] = n2
    tbl2[4] = n3
    for i = 1, #tbl do
        local questNpcActor = self.GetQuestNpcActor(self, tbl[i], 11034)
        questNpcActor:SitOnChair(0, true)
        questNpcActor:DisableInteeHeadCtrl(true)
    end

    for i = 1, 3 do
        self.GetQuestNpcActor(self, tbl[i], 11034):DoFreeStyle(tbl2[math.random(1, #tbl2)], true, nil, true, true, false, false)
    end

    for i = 4, 6 do
        self.GetQuestNpcActor(self, tbl[i], 11034):DoFreeStyle(tbl2[math.random(1, 3)], true, nil, true, true, false, false)
    end

    self.CreateLocalGadget(self, 70710097, "1", {x = -679.314, y = 220.472, z = 225.695}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CreateLocalGadget(self, 70710163, "2", {x = -678.832, y = 220.472, z = 225.962}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CreateLocalGadget(self, 70710164, "3", {x = -678.944, y = 220.473, z = 225.455}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CreateLocalGadget(self, 70710101, "4", {x = -671.907, y = 220.46, z = 222.34}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CreateLocalGadget(self, 70710096, "5", {x = -671.556, y = 220.46, z = 221.915}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CreateLocalGadget(self, 70710931, "6", {x = -677.807, y = 220.474, z = 220.88}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CreateLocalGadget(self, 71700745, "7", {x = -677.917, y = 220.474, z = 221.429}, {x = 0, y = -109.23, z = 0}, 3, nil, nil, true)
    self.CreateLocalGadget(self, 71700746, "8", {x = -677.575, y = 220.474, z = 221.238}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CallDelayByQuest(self, "bubble1", math.random(1, 5), function()
        self:CreateSpeechBubbleTask(13910, 110339914, 0, true, 8, 15, true, false)
    end)

    self.CallDelayByQuest(self, "bubble2", math.random(1, 5), function()
        self:CreateSpeechBubbleTask(13911, 110339915, 0, true, 8, 15, true, false)
    end)

    self.CallDelayByQuest(self, "bubble3", math.random(1, 5), function()
        self:CreateSpeechBubbleTask(13947, 110339916, 0, true, 8, 15, true, false)
    end)
end

function Quest11034:WanminAutomos2()
    local tbl = {}
    local str = "Npc13948"
    local v = "Npc13911"
    local str2 = "Npc13949"
    local str3 = "Npc13947"
    local str4 = "Npc13950"
    tbl[1] = "Npc13910"
    tbl[2] = str
    tbl[3] = v
    tbl[4] = str2
    tbl[5] = str3
    tbl[6] = str4
    local tbl2 = {}
    local n = 8040
    local n2 = 8041
    local n3 = 8060
    tbl2[1] = 8010
    tbl2[2] = n
    tbl2[3] = n2
    tbl2[4] = n3
    for i = 1, #tbl do
        local questNpcActor = self.GetQuestNpcActor(self, tbl[i], 11034)
        questNpcActor:SitOnChair(0, true)
        questNpcActor:DisableInteeHeadCtrl(true)
    end

    for i = 1, 3 do
        self.GetQuestNpcActor(self, tbl[i], 11034):DoFreeStyle(tbl2[math.random(1, #tbl2)], true, nil, true, true, false, false)
    end

    for i = 4, 6 do
        self.GetQuestNpcActor(self, tbl[i], 11034):DoFreeStyle(tbl2[math.random(1, 3)], true, nil, true, true, false, false)
    end

    self.CreateLocalGadget(self, 70710097, "1", {x = -679.314, y = 220.472, z = 225.695}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CreateLocalGadget(self, 70710163, "2", {x = -678.832, y = 220.472, z = 225.962}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CreateLocalGadget(self, 70710164, "3", {x = -678.944, y = 220.473, z = 225.455}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CreateLocalGadget(self, 70710101, "4", {x = -671.907, y = 220.46, z = 222.34}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CreateLocalGadget(self, 70710096, "5", {x = -671.556, y = 220.46, z = 221.915}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self.CallDelayByQuest(self, "bubble1", math.random(1, 5), function()
        self:CreateSpeechBubbleTask(13910, 110339914, 0, true, 8, 15, true, false)
    end)

    self.CallDelayByQuest(self, "bubble2", math.random(1, 5), function()
        self:CreateSpeechBubbleTask(13911, 110339915, 0, true, 8, 15, true, false)
    end)

    self.CallDelayByQuest(self, "bubble3", math.random(1, 5), function()
        self:CreateSpeechBubbleTask(13947, 110339916, 0, true, 8, 15, true, false)
    end)
end

function Quest11034:ClearWanminAutomos()
    self:RemoveLocalGadget(70710097, "1")
    self:RemoveLocalGadget(70710163, "2")
    self:RemoveLocalGadget(70710164, "3")
    self:RemoveLocalGadget(70710101, "4")
    self:RemoveLocalGadget(70710096, "5")
end

function Quest11034:OnSubStart1103401(arg1)
    print("OnSubStart1103401")
    this:NpcCreateWithNpcTrigger(npcs.Npc10045.id, 1103401, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc13912.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13892.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1045.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc1627.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2045.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13947.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13948.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13949.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13950.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13911.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13910.id, 0)
    self:GetQuestNpcActor(npcs.Npc10045.alias, 11034):DoFreeStyle(1330, true, nil, true, true, false, false)
    self:WanminAutomos()
end

function Quest11034:OnSubFinish1103401(arg1)
    print("OnSubFinish1103401")
end

function Quest11034:OnSubFailed1103401(arg1)
    print("OnSubFailed1103401")
end

function Quest11034:OnSubStart1103402(arg1)
    print("OnSubStart1103402")
    this:NpcCreateWithNpcTrigger(npcs.Npc1083.id, 1103402, 0, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc1627.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2093.id, 0)
    self:WanminAutomos()
end

function Quest11034:OnSubFinish1103402(arg1)
    print("OnSubFinish1103402")
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10045.alias, 3)
    self:RemoveLocalGadget(70710931, "6")
    self:RemoveLocalGadget(71700745, "7")
    self:RemoveLocalGadget(71700746, "8")
end

function Quest11034:OnSubFailed1103402(arg1)
    print("OnSubFailed1103402")
end

function Quest11034:OnSubStart1103406(arg1)
    print("OnSubStart1103406")
    self.ActionSafeCall(self, function()
        self:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13912.id, 1103406, 0, 7, 1)
        self:CreateQuestNpc(arg1, npcs.Npc2093.id, 0)
        self:CreateQuestNpc(arg1, npcs.Npc13892.id, 0)
        self:GetQuestNpcActor(npcs.Npc2093.alias, 11034):DisableInteeHeadCtrl(true)
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc13892.alias, 11034)
        questNpcActor:DoFreeStyle(1130, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)

    self.WanminAutomos2(self)
end

function Quest11034:OnSubFinish1103406(arg1)
    print("OnSubFinish1103406")
    this:SafeDestroyQuestNpc(npcs.Npc13912.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13892.alias, 3)
end

function Quest11034:OnSubFailed1103406(arg1)
    print("OnSubFailed1103406")
end

function Quest11034:OnSubStart1103403(arg1)
    print("OnSubStart1103403")
    this:CreateQuestNpcWithTriggerBlackEx("Q1103403N1083Trigger", 1103403, 1083, 0, 5, 0, 1, 0.5, 2)
    self:WanminAutomos2()
end

function Quest11034:OnSubFinish1103403(arg1)
    print("OnSubFinish1103403")
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13947.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13948.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13949.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13950.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13911.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13910.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2093.alias, 3)
    self:ClearWanminAutomos()
end

function Quest11034:OnSubFailed1103403(arg1)
    print("OnSubFailed1103403")
end

function Quest11034:OnSubStart1103407(arg1)
    print("OnSubStart1103407")
    actorMgr:CreateActorWithPos("Q1103407_Trigger1", "Actor/Gadget/Q1103407_Trigger1", 70900002, 0, points.Q1103407_Trigger1_Point.pos, points.Q1103407_Trigger1_Point.rot, true, false, 3)
end

function Quest11034:OnSubFinish1103407(arg1)
    print("OnSubFinish1103407")
    actorMgr:DestroyEntityActor("Q1103407_Trigger1", 3, false)
end

function Quest11034:OnSubFailed1103407(arg1)
    print("OnSubFailed1103407")
end

function Quest11034:OnSubStart1103410(arg1)
    print("OnSubStart1103410")
    this:CallDelayByQuest("", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13892.id, 1103410, 0, 20, 1)
    end)
end

function Quest11034:OnSubFinish1103410(arg1)
    print("OnSubFinish1103410")
    self:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13892.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator1103402, nil, 11034)
    end)
end

function Quest11034:OnSubFailed1103410(arg1)
    print("OnSubFailed1103410")
end

function Quest11034:OnSubStart1103408(arg1)
    print("OnSubStart1103408")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13912.id, 1103408, 0, 10, 1)
end

function Quest11034:OnSubFinish1103408(arg1)
    print("OnSubFinish1103408")
    self:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13912.alias, 3)
end

function Quest11034:OnSubFailed1103408(arg1)
    print("OnSubFailed1103408")
end

function Quest11034:OnSubStart1103404(arg1)
    print("OnSubStart1103404")
    self:CancelWeather()
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1083.id, 1103404, 0, 15, 1)
end

function Quest11034:OnSubFinish1103404(arg1)
    print("OnSubFinish1103404")
    self:ClearNarratorTask()
    self:CancelWeather()
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Narrator1103403, nil, nil)
    end)
end

function Quest11034:OnSubFailed1103404(arg1)
    print("OnSubFailed1103404")
end

function Quest11034:OnSubStart1103405(arg1)
    print("OnSubStart1103405")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1083.id, 1103405, 0, 10, 1)
end

function Quest11034:OnSubFinish1103405(arg1)
    print("OnSubFinish1103405")
    self:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
end

function Quest11034:OnSubFailed1103405(arg1)
    print("OnSubFailed1103405")
end

return Quest11034

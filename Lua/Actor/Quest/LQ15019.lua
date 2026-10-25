require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15019 = class("Quest15019", QuestActorProxy)
Quest15019.defaultAlias = "Quest15019"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15019:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1501901"] = self.OnSubStart1501901,
        ["1501915"] = self.OnSubStart1501915,
        ["1501903"] = self.OnSubStart1501903,
        ["1501904"] = self.OnSubStart1501904,
        ["1501905"] = self.OnSubStart1501905,
        ["1501902"] = self.OnSubStart1501902,
        ["1501906"] = self.OnSubStart1501906,
        ["1501907"] = self.OnSubStart1501907,
        ["1501908"] = self.OnSubStart1501908,
        ["1501909"] = self.OnSubStart1501909,
        ["1501910"] = self.OnSubStart1501910,
        ["1501911"] = self.OnSubStart1501911,
        ["1501912"] = self.OnSubStart1501912,
        ["1501913"] = self.OnSubStart1501913,
        ["1501916"] = self.OnSubStart1501916,
        ["1501914"] = self.OnSubStart1501914
    }
end

function Quest15019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1501901"] = self.OnSubFinish1501901,
        ["1501915"] = self.OnSubFinish1501915,
        ["1501903"] = self.OnSubFinish1501903,
        ["1501904"] = self.OnSubFinish1501904,
        ["1501905"] = self.OnSubFinish1501905,
        ["1501902"] = self.OnSubFinish1501902,
        ["1501906"] = self.OnSubFinish1501906,
        ["1501907"] = self.OnSubFinish1501907,
        ["1501908"] = self.OnSubFinish1501908,
        ["1501909"] = self.OnSubFinish1501909,
        ["1501910"] = self.OnSubFinish1501910,
        ["1501911"] = self.OnSubFinish1501911,
        ["1501912"] = self.OnSubFinish1501912,
        ["1501913"] = self.OnSubFinish1501913,
        ["1501916"] = self.OnSubFinish1501916,
        ["1501914"] = self.OnSubFinish1501914
    }
end

function Quest15019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15019:Start()
    print("Start")
end

function Quest15019:OnDestroy()
    print("OnDestroy")
end

function Quest15019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15019:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Trigger_1501901_02", 0)
    this:ActorDestroy("Trigger_1501902", 0)
    this:ActorDestroy("Trigger_1501903", 0)
    this:ActorDestroy("Trigger_1501904", 0)
    this:ActorDestroy("Trigger_1501907", 0)
    this:ActorDestroy("Trigger_1501909", 0)
    this:BanCrowdNpc(3509, 2, nil, false, true)
end

function Quest15019:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest15019:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15019:OnSubStart1501901(arg1)
    print("OnSubStart1501901")
    this:CreateQuestNpc(arg1, npcs.Npc21647.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Trigger_1501901_02", "Actor/Gadget/Trigger_1501901_02", 70900002, 0, points._Trigger_1501901_02Point_.pos, points._Trigger_1501901_02Point_.rot, true, false, 3, nil, 0, 0)
end

function Quest15019:OnSubFinish1501901(arg1)
    print("OnSubFinish1501901")
    this:ClearNarratorTask()
    this:SetNavigationByMainId(15019, true)
end

function Quest15019:OnSubStart1501915(arg1)
    print("OnSubStart1501915")
end

function Quest15019:OnSubFinish1501915(arg1)
    print("OnSubFinish1501915")
end

function Quest15019:OnSubStart1501903(arg1)
    print("OnSubStart1501903")
    actorMgr:CreateActorWithPos("Trigger_1501903", "Actor/Gadget/Trigger_1501903", 70900002, 0, points._Trigger_1501903Point_.pos, points._Trigger_1501903Point_.rot, true, false, 3, nil, 0, 0)
end

function Quest15019:OnSubFinish1501903(arg1)
    print("OnSubFinish1501903")
    this:ActorDestroy("Trigger_1501903", nil)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1501902, nil)
    end)
end

function Quest15019:OnSubStart1501904(arg1)
    print("OnSubStart1501904")
    this:CallDelay(0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21647.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 15019):DoFreeStyle(1173, true, nil, true, true, false, false)
        actorMgr:CreateActorWithPos("Trigger_1501904", "Actor/Gadget/Trigger_1501904", 70900002, 0, points._Trigger_1501904Point_.pos, points._Trigger_1501904Point_.rot, true, false, 3, nil, 0, 0)
    end)
end

function Quest15019:OnSubFinish1501904(arg1)
    print("OnSubFinish1501904")
    this:ClearNarratorTask()
end

function Quest15019:OnSubStart1501905(arg1)
    print("OnSubStart1501905")
    this:RequestInteraction(npcs.Npc1092.alias, "", true)
end

function Quest15019:OnSubFinish1501905(arg1)
    print("OnSubFinish1501905")
    this:SafeDestroyQuestNpc(npcs.Npc21647.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
end

function Quest15019:OnSubStart1501902(arg1)
    print("OnSubStart1501902")
    this:CreateQuestNpc(arg1, npcs.Npc6243.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6243.alias, 15019):DoFreeStyle(5030, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6245.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6245.alias, 15019):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6236.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6236.alias, 15019):DoFreeStyle(1060, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Trigger_1501902", "Actor/Gadget/Trigger_1501902", 70900002, 0, points._Trigger_1501902Point_.pos, points._Trigger_1501902Point_.rot, true, false, 3, nil, 0, 0)
end

function Quest15019:OnSubFinish1501902(arg1)
    print("OnSubFinish1501902")
end

function Quest15019:OnSubStart1501906(arg1)
    print("OnSubStart1501906")
    this:RequestInteraction(npcs.Npc6243.alias, "", true)
    this:BanCrowdNpc(3509, 2, nil, true, nil)
end

function Quest15019:OnSubFinish1501906(arg1)
    print("OnSubFinish1501906")
    this:SafeDestroyQuestNpc(npcs.Npc6243.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6245.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6236.alias, 3)
    this:BanCrowdNpc(3509, 2, nil, false, nil)
end

function Quest15019:OnSubStart1501907(arg1)
    print("OnSubStart1501907")
    actorMgr:CreateActorWithPos("Trigger_1501907", "Actor/Gadget/Trigger_1501907", 70900002, 0, points._Trigger_1501907Point_.pos, points._Trigger_1501907Point_.rot, true, false, 3, nil, 0, 0)
    this:BanCrowdNpc(3509, 2, nil, true, nil)
end

function Quest15019:OnSubFinish1501907(arg1)
    print("OnSubFinish1501907")
end

function Quest15019:OnSubStart1501908(arg1)
    print("OnSubStart1501908")
    this:CreateQuestNpc(arg1, npcs.Npc21649.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6238.alias, true, 1)
    this:RequestInteraction(npcs.Npc21649.alias, "", true)
end

function Quest15019:OnSubFinish1501908(arg1)
    print("OnSubFinish1501908")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1501903, nil)
        this:BanCrowdNpc(3509, 2, nil, true)
    end)
end

function Quest15019:OnSubStart1501909(arg1)
    print("OnSubStart1501909")
    this:CallDelay(0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21648.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21649.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 15019):DoFreeStyle(1171, true, nil, true, true, false, false)
        this:DailyNpcSafeHideSelf(npcs.Npc6238.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6242.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6241.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6230.alias, true, 1)
        actorMgr:CreateActorWithPos("Trigger_1501909", "Actor/Gadget/Trigger_1501909", 70900002, 0, points._Trigger_1501909Point_.pos, points._Trigger_1501909Point_.rot, true, false, 3, nil, 0, 0)
        this:BanCrowdNpc(3509, 2, nil, true)
    end)
end

function Quest15019:OnSubFinish1501909(arg1)
    print("OnSubFinish1501909")
    this:SafeDestroyQuestNpc(npcs.Npc21649.alias, 3)
end

function Quest15019:OnSubStart1501910(arg1)
    print("OnSubStart1501910")
    this:GetQuestNpcActor(npcs.Npc1092.alias, 15019):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6230.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6241.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6242.alias, true, 1)
    this:LightNotifyTo(npcs.Npc6238.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 15019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21648.alias, 15019):DisableInteeHeadCtrl(true)
    this:BanCrowdNpc(3509, 2, nil, true, nil)
end

function Quest15019:OnSubFinish1501910(arg1)
    print("OnSubFinish1501910")
    this:SafeDestroyQuestNpc(npcs.Npc21648.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
end

function Quest15019:OnSubStart1501911(arg1)
    print("OnSubStart1501911")
    this:CreateQuestNpc(arg1, npcs.Npc21653.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21653.alias, 15019):DoFreeStyle(4100, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21654.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6228.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6229.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6248.alias, true, 1)
end

function Quest15019:OnSubFinish1501911(arg1)
    print("OnSubFinish1501911")
end

function Quest15019:OnSubStart1501912(arg1)
    print("OnSubStart1501912")
    this:DailyNpcSafeHideSelf(npcs.Npc6248.alias, true, 1)
end

function Quest15019:OnSubFinish1501912(arg1)
    print("OnSubFinish1501912")
end

function Quest15019:OnSubStart1501913(arg1)
    print("OnSubStart1501913")
    this:DailyNpcSafeHideSelf(npcs.Npc6248.alias, true, 1)
end

function Quest15019:OnSubFinish1501913(arg1)
    print("OnSubFinish1501913")
end

function Quest15019:OnSubStart1501916(arg1)
    print("OnSubStart1501916")
    this:CreateQuestNpc(arg1, npcs.Npc21653.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21653.alias, 15019):DoFreeStyle(4100, true, nil, true, true, false, false)
end

function Quest15019:OnSubFinish1501916(arg1)
    print("OnSubFinish1501916")
    this:SafeDestroyQuestNpc(npcs.Npc21653.alias, 3)
end

function Quest15019:OnSubStart1501914(arg1)
    print("OnSubStart1501914")
    this:CreateQuestNpc(arg1, npcs.Npc21654.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6228.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6229.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6248.alias, true, 1)
    this:BanCrowdNpc(3509, 2, nil, true, nil)
    if self:GetSubQuestState(1501912) == 2 then
        this:CreateQuestNpc(arg1, npcs.Npc21653.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc21653.alias, 15019):DoFreeStyle(4100, true, nil, true, true, false, false)
        this:LightNotifyTo(npcs.Npc6230.alias, 0, true)
        this:LightNotifyTo(npcs.Npc6241.alias, 0, true)
        this:LightNotifyTo(npcs.Npc6242.alias, 0, true)
    end
end

function Quest15019:OnSubFinish1501914(arg1)
    print("OnSubFinish1501914")
    this:SafeDestroyQuestNpc(npcs.Npc21654.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6228.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6229.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21653.alias, 3)
    this:CallDelay(0.5, function(arg1)
        this:ActionSafeCall(nil)
        this:QuestNarratorTask(datas.NarratorWithId_1501906, nil)
    end)

    this:BanCrowdNpc(3509, 2, nil, false, nil)
end

return Quest15019

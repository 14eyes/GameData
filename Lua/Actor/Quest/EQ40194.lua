require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40194 = class("Quest40194", QuestActorProxy)
Quest40194.defaultAlias = "Quest40194"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40194:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40194:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4019401"] = self.OnSubStart4019401,
        ["4019402"] = self.OnSubStart4019402,
        ["4019403"] = self.OnSubStart4019403,
        ["4019404"] = self.OnSubStart4019404,
        ["4019405"] = self.OnSubStart4019405,
        ["4019406"] = self.OnSubStart4019406,
        ["4019407"] = self.OnSubStart4019407
    }
end

function Quest40194:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4019401"] = self.OnSubFinish4019401,
        ["4019402"] = self.OnSubFinish4019402,
        ["4019403"] = self.OnSubFinish4019403,
        ["4019404"] = self.OnSubFinish4019404,
        ["4019405"] = self.OnSubFinish4019405,
        ["4019406"] = self.OnSubFinish4019406,
        ["4019407"] = self.OnSubFinish4019407
    }
end

function Quest40194:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40194:Start()
    print("Start")
end

function Quest40194:OnDestroy()
    print("OnDestroy")
end

function Quest40194:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40194:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40194:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:ActorDestroy("Q40194Trigger1")
    this:ActorDestroy("Q40194Trigger2")
    this:ActorDestroy("Q40194Trigger4")
    this:ActorDestroy("Q40194Trigger5")
    this:ActorDestroy("Q40194Trigger6")
    this:ActorDestroy("Q40194Trigger")
    this:ActorDestroy("Q40194Trigger3")
    this:ActorDestroy("Q40194Trigger7")
    this:ActorDestroy("Q40194Trigger8")
    this:BanCrowdNpc(1083, 1, datas.CrowdInstanceIDList, false, nil)
    this:DestroyQuestNpcActor(npcs.Npc1088.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1070.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1075.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc30770.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1307.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1076.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc1078.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc14977.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc5087.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc5082.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc5086.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15338.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15336.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15338.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15339.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15335.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15343.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15344.alias, 1083)
    this:LightNotifyTo(npcs.Npc5044.alias, 0, true)
end

function Quest40194:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q40194Trigger1")
    this:ActorDestroy("Q40194Trigger2")
    this:ActorDestroy("Q40194Trigger4")
    this:ActorDestroy("Q40194Trigger5")
    this:ActorDestroy("Q40194Trigger6")
    this:ActorDestroy("Q40194Trigger")
    this:ActorDestroy("Q40194Trigger3")
    this:ActorDestroy("Q40194Trigger7")
    this:ActorDestroy("Q40194Trigger8")
    this:BanCrowdNpc(1083, 1, datas.CrowdInstanceIDList, false, nil)
    this:DestroyQuestNpcActor(npcs.Npc1088.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1070.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1075.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc30770.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1307.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1076.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc1078.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc14977.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc5087.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc5082.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc5086.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15338.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15336.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15338.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15339.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15335.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15343.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15344.alias, 1083)
    this:LightNotifyTo(npcs.Npc5044.alias, 0, true)
end

function Quest40194:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40194:OnSubStart4019401(arg1)
    print("OnSubStart4019401")
    actorMgr:CreateActorWithPos("Q40194Trigger1", "Actor/Gadget/Q40194Trigger1", 70900002, 0, points._Q40194Trigger1Point_.pos, points._Q40194Trigger1Point_.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1070.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 40194):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1070.alias, 40194):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40194:OnSubFinish4019401(arg1)
    print("OnSubFinish4019401")
end

function Quest40194:OnSubStart4019402(arg1)
    print("OnSubStart4019402")
    actorMgr:CreateActorWithPos("Q40194Trigger", "Actor/Gadget/Q40194Trigger", 70900002, 0, points._Q40194TriggerPoint_.pos, points._Q40194TriggerPoint_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 40194):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1070.alias, 40194):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40194:OnSubFinish4019402(arg1)
    print("OnSubFinish4019402")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1088.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1070.alias, 3)
    end)
end

function Quest40194:OnSubStart4019403(arg1)
    print("OnSubStart4019403")
    actorMgr:CreateActorWithPos("Q40194Trigger2", "Actor/Gadget/Q40194Trigger2", 70900002, 0, points._Q40194Trigger2Point_.pos, points._Q40194Trigger2Point_.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc30770.id, 0, false, 0)
end

function Quest40194:OnSubFinish4019403(arg1)
    print("OnSubFinish4019403")
end

function Quest40194:OnSubStart4019404(arg1)
    print("OnSubStart4019404")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15343.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15344.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15343.alias, 40194):DoFreeStyle(1160, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc15344.alias, 40194):DoFreeStyle(1160, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc30770.alias, 40194):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc15343.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15344.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30770.alias, 40194):DisableInteeHeadCtrl(true)
    end)
end

function Quest40194:OnSubFinish4019404(arg1)
    print("OnSubFinish4019404")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc15343.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc15344.alias, 1083)
    end)
end

function Quest40194:OnSubStart4019405(arg1)
    print("OnSubStart4019405")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q40194Trigger3", "Actor/Gadget/Q40194Trigger3", 70900002, 0, points._Q40194Trigger3Point_.pos, points._Q40194Trigger3Point_.rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1307.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc30770.alias, 40194):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1307.alias, 40194):DoFreeStyle(1240, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc30770.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1307.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40194):DisableInteeHeadCtrl(true)
        this:NotifyTo(npcs.Npc5044.alias, 1, true)
    end)
end

function Quest40194:OnSubFinish4019405(arg1)
    print("OnSubFinish4019405")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc30770.alias, 3)
    end)
end

function Quest40194:OnSubStart4019406(arg1)
    print("OnSubStart4019406")
    actorMgr:CreateActorWithPos("Q40194Trigger4", "Actor/Gadget/Q40194Trigger4", 70900002, 0, points._Q40194Trigger4Point_.pos, points._Q40194Trigger4Point_.rot, true, false, 1083)
    actorMgr:CreateActorWithPos("Q40194Trigger5", "Actor/Gadget/Q40194Trigger5", 70900002, 0, points._Q40194Trigger5Point_.pos, points._Q40194Trigger5Point_.rot, true, false, 1083)
    actorMgr:CreateActorWithPos("Q40194Trigger6", "Actor/Gadget/Q40194Trigger6", 70900002, 0, points._Q40194Trigger6Point_.pos, points._Q40194Trigger6Point_.rot, true, false, 1083)
    actorMgr:CreateActorWithPos("Q40194Trigger7", "Actor/Gadget/Q40194Trigger7", 70900002, 0, points._Q40194Trigger7Point_.pos, points._Q40194Trigger7Point_.rot, true, false, 1083)
    this:CreateQuestNpc(arg1, npcs.Npc1076.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1078.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14977.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5087.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5082.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5086.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15335.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15336.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15338.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15339.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc5087.alias, 40194):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc5082.alias, 40194):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc5086.alias, 40194):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15335.alias, 40194):DoFreeStyle(4221, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15336.alias, 40194):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15338.alias, 40194):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15339.alias, 40194):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1078.alias, 40194):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1307.alias, 40194):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15339.alias, 40194):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15338.alias, 40194):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15336.alias, 40194):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15335.alias, 40194):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5087.alias, 40194):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5082.alias, 40194):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5086.alias, 40194):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1307.alias, 40194):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 40194):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5044.alias, 1, true)
    this:BanCrowdNpc(1083, 1, datas.CrowdInstanceIDList, true, nil)
    actorMgr:DestroyNpcActorByAlias("Npc107614009")
    actorMgr:DestroyNpcActorByAlias("Npc1378914009")
    this:ActorDestroy("Q14009Trigger4")
    this.uActor:RemoveLocalGadget(70711239, "S2041_1")
    this.uActor:RemoveLocalGadget(70711239, "S2041_2")
    this.uActor:RemoveLocalGadget(70710776, "S2041_3")
end

function Quest40194:OnSubFinish4019406(arg1)
    print("OnSubFinish4019406")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc15338.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc15339.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc5087.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc5082.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc5086.alias, 1083)
        this:ActorDestroy("Q40194Trigger4")
        this:ActorDestroy("Q40194Trigger5")
        this:ActorDestroy("Q40194Trigger6")
    end)
end

function Quest40194:OnSubStart4019407(arg1)
    print("OnSubStart4019407")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q40194Trigger8", "Actor/Gadget/Q40194Trigger8", 70900002, 0, points._Q40194Trigger8Point_.pos, points._Q40194Trigger8Point_.rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1307.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5082.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5086.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc5086.alias, 40194):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc5082.alias, 40194):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc15335.alias, 40194):DoFreeStyle(4221, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc15336.alias, 40194):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40194):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1307.alias, 40194):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1076.alias, 40194):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1078.alias, 40194):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1076.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1078.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14977.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15336.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15335.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc5082.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc5086.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1307.alias, 40194):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40194):DisableInteeHeadCtrl(true)
        this:NotifyTo(npcs.Npc5044.alias, 1, true)
        this:BanCrowdNpc(1083, 1, datas.CrowdInstanceIDList, true)
    end)
end

function Quest40194:OnSubFinish4019407(arg1)
    print("OnSubFinish4019407")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1076.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc1078.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc14977.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1307.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5082.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc5086.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc15335.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc15336.alias, 1083)
        this:LightNotifyTo(npcs.Npc5044.alias, 0, true)
        this:BanCrowdNpc(1083, 1, datas.CrowdInstanceIDList, false)
    end)
end

return Quest40194

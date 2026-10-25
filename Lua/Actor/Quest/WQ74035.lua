require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74035 = class("Quest74035", QuestActorProxy)
Quest74035.defaultAlias = "Quest74035"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74035:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7403502"] = self.OnSubStart7403502,
        ["7403503"] = self.OnSubStart7403503,
        ["7403504"] = self.OnSubStart7403504,
        ["7403505"] = self.OnSubStart7403505,
        ["7403506"] = self.OnSubStart7403506,
        ["7403507"] = self.OnSubStart7403507,
        ["7403508"] = self.OnSubStart7403508,
        ["7403510"] = self.OnSubStart7403510,
        ["7403509"] = self.OnSubStart7403509,
        ["7403501"] = self.OnSubStart7403501
    }
end

function Quest74035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7403502"] = self.OnSubFinish7403502,
        ["7403503"] = self.OnSubFinish7403503,
        ["7403504"] = self.OnSubFinish7403504,
        ["7403505"] = self.OnSubFinish7403505,
        ["7403506"] = self.OnSubFinish7403506,
        ["7403507"] = self.OnSubFinish7403507,
        ["7403508"] = self.OnSubFinish7403508,
        ["7403510"] = self.OnSubFinish7403510,
        ["7403509"] = self.OnSubFinish7403509,
        ["7403501"] = self.OnSubFinish7403501
    }
end

function Quest74035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74035:Start()
    print("Start")
end

function Quest74035:OnDestroy()
    print("OnDestroy")
end

function Quest74035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74035:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74035:OnSubStart7403502(arg1)
    print("OnSubStart7403502")
    this:CreateQuestNpc(arg1, npcs.Npc5084Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5084Data.alias)
    questNpcActor:SitOnChair(8065, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest74035:OnSubFinish7403502(arg1)
    print("OnSubFinish7403502")
end

function Quest74035:OnSubStart7403503(arg1)
    print("OnSubStart7403503")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5084Data.alias)
    questNpcActor:SitOnChair(8065, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest74035:OnSubFinish7403503(arg1)
    print("OnSubFinish7403503")
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):DisableInteeHeadCtrl(false)
    local actor = actorMgr:GetActor("74034")
    if actor ~= nil then
        actor:ClearNarratorTask()
        actor:StopNarrator()
    end
end

function Quest74035:OnSubStart7403504(arg1)
    print("OnSubStart7403504")
    this:CreateQuestNpc(arg1, npcs.Npc5083Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5083Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc5085Data.id, 0)
    local v = this:GetQuestNpcActor(npcs.Npc5085Data.alias)
    v:DoFreeStyle(1120, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
    local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc5084Data.alias)
    questNpcActor2:SitOnChair(8065, false)
    questNpcActor2:DisableInteeHeadCtrl(true)
end

function Quest74035:OnSubFinish7403504(arg1)
    print("OnSubFinish7403504")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc5084Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5084Data.alias, 3)
    end)
end

function Quest74035:OnSubStart7403505(arg1)
    print("OnSubStart7403505")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5082Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc5082Data.alias):SitOnChair(0, false)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5083Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc5085Data.alias)
        v:DoFreeStyle(1120, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
    end)
end

function Quest74035:OnSubFinish7403505(arg1)
    print("OnSubFinish7403505")
end

function Quest74035:OnSubStart7403506(arg1)
    print("OnSubStart7403506")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5033Data.id, 0)
        actorMgr:CreateActorWithPos("Q74035Trigger", "Actor/Gadget/Q74035Trigger", 70900002, 0, points.TPos_Q74035Trigger.pos, points.TPos_Q74035Trigger.rot, true, false, 3)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5083Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc5085Data.alias)
        v:DoFreeStyle(1120, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
    end)
end

function Quest74035:OnSubFinish7403506(arg1)
    print("OnSubFinish7403506")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc5083Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc5085Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5083Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5085Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5082Data.alias, 3)
    end)
end

function Quest74035:OnSubStart7403507(arg1)
    print("OnSubStart7403507")
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
    end)
end

function Quest74035:OnSubFinish7403507(arg1)
    print("OnSubFinish7403507")
end

function Quest74035:OnSubStart7403508(arg1)
    print("OnSubStart7403508")
    this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5082Data.alias, 1, true)
    if sceneData.currSceneID == 1083 then
        self:FinishQuestID(false, 7403508)
    end
end

function Quest74035:OnSubFinish7403508(arg1)
    print("OnSubFinish7403508")
    this:DestroyQuestNpcActor(npcs.Npc5033Data.alias, 3)
end

function Quest74035:OnSubStart7403510(arg1)
    print("OnSubStart7403510")
    this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5082Data.alias, 1, true)
end

function Quest74035:OnSubFinish7403510(arg1)
    print("OnSubFinish7403510")
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5082Data.alias, 0, true)
        this:DestroyQuestNpcActor(npcs.Npc5084Data.alias, 3)
    end)
end

function Quest74035:OnSubStart7403509(arg1)
    print("OnSubStart7403509")
end

function Quest74035:OnSubFinish7403509(arg1)
    print("OnSubFinish7403509")
end

function Quest74035:OnSubStart7403501(arg1)
    print("OnSubStart7403501")
end

function Quest74035:OnSubFinish7403501(arg1)
    print("OnSubFinish7403501")
end

return Quest74035

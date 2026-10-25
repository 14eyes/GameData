require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74036 = class("Quest74036", QuestActorProxy)
Quest74036.defaultAlias = "Quest74036"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74036:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7403602"] = self.OnSubStart7403602,
        ["7403603"] = self.OnSubStart7403603,
        ["7403604"] = self.OnSubStart7403604,
        ["7403605"] = self.OnSubStart7403605,
        ["7403601"] = self.OnSubStart7403601
    }
end

function Quest74036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7403602"] = self.OnSubFinish7403602,
        ["7403603"] = self.OnSubFinish7403603,
        ["7403604"] = self.OnSubFinish7403604,
        ["7403605"] = self.OnSubFinish7403605,
        ["7403601"] = self.OnSubFinish7403601
    }
end

function Quest74036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74036:Start()
    print("Start")
end

function Quest74036:OnDestroy()
    print("OnDestroy")
end

function Quest74036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74036:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74036:OnSubStart7403602(arg1)
    print("OnSubStart7403602")
    this:CreateQuestNpc(arg1, npcs.Npc5084Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5084Data.alias)
    questNpcActor:SitOnChair(8065, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest74036:OnSubFinish7403602(arg1)
    print("OnSubFinish7403602")
end

function Quest74036:OnSubStart7403603(arg1)
    print("OnSubStart7403603")
    this:CreateQuestNpc(arg1, npcs.Npc13352Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13352Data.alias)
    questNpcActor:DoFreeStyle(1050, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc5084Data.alias)
    v:SitOnChair(8065, false)
    v:DisableInteeHeadCtrl(true)
end

function Quest74036:OnSubFinish7403603(arg1)
    print("OnSubFinish7403603")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc5084Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5084Data.alias, 3)
    end)
end

function Quest74036:OnSubStart7403604(arg1)
    print("OnSubStart7403604")
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13352Data.alias)
        questNpcActor:DoFreeStyle(1050, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest74036:OnSubFinish7403604(arg1)
    print("OnSubFinish7403604")
end

function Quest74036:OnSubStart7403605(arg1)
    print("OnSubStart7403605")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q74036Trigger1", "Actor/Gadget/Q74036Trigger1", 70900002, 0, points.TPos_Q74036Trigger1.pos, points.TPos_Q74036Trigger1.rot, true, false, 1083)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13352Data.alias)
        questNpcActor:DoFreeStyle(1050, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest74036:OnSubFinish7403605(arg1)
    print("OnSubFinish7403605")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13352Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5084Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13352Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
    end)
end

function Quest74036:OnSubStart7403601(arg1)
    print("OnSubStart7403601")
end

function Quest74036:OnSubFinish7403601(arg1)
    print("OnSubFinish7403601")
end

return Quest74036

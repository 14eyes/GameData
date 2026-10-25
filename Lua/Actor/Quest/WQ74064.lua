require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74064 = class("Quest74064", QuestActorProxy)
Quest74064.defaultAlias = "Quest74064"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74064:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74064:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7406401"] = self.OnSubStart7406401,
        ["7406402"] = self.OnSubStart7406402,
        ["7406403"] = self.OnSubStart7406403,
        ["7406404"] = self.OnSubStart7406404
    }
end

function Quest74064:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7406401"] = self.OnSubFinish7406401,
        ["7406402"] = self.OnSubFinish7406402,
        ["7406403"] = self.OnSubFinish7406403,
        ["7406404"] = self.OnSubFinish7406404
    }
end

function Quest74064:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74064:Start()
    print("Start")
end

function Quest74064:OnDestroy()
    print("OnDestroy")
end

function Quest74064:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74064:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74064:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74064:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74064:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74064:OnSubStart7406401(arg1)
    print("OnSubStart7406401")
    this:CreateQuestNpc(arg1, npcs.Npc21107Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21107Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5214Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DoFreeStyle(1142, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
end

function Quest74064:OnSubFinish7406401(arg1)
    print("OnSubFinish7406401")
    self:SetNavigationByMainId(74064, true)
end

function Quest74064:OnSubStart7406402(arg1)
    print("OnSubStart7406402")
    this:CreateQuestNpc(arg1, npcs.Npc21107Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21107Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5214Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5214Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5252Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21107Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74064:OnSubFinish7406402(arg1)
    print("OnSubFinish7406402")
end

function Quest74064:OnSubStart7406403(arg1)
    print("OnSubStart7406403")
    this:GetQuestNpcActor(npcs.Npc21107Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5214Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5252Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21107Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74064:OnSubFinish7406403(arg1)
    print("OnSubFinish7406403")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5252Data.alias)
end

function Quest74064:OnSubStart7406404(arg1)
    print("OnSubStart7406404")
    this:GetQuestNpcActor(npcs.Npc21107Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5214Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5252Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    questNpcActor:DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc21107Data.alias):DisableInteeHeadCtrl(false)
end

function Quest74064:OnSubFinish7406404(arg1)
    print("OnSubFinish7406404")
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21107Data.alias):DisableInteeHeadCtrl(true)
end

return Quest74064

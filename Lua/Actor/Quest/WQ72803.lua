require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72803 = class("Quest72803", QuestActorProxy)
Quest72803.defaultAlias = "Quest72803"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72803:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72803:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7280301"] = self.OnSubStart7280301,
        ["7280302"] = self.OnSubStart7280302,
        ["7280303"] = self.OnSubStart7280303,
        ["7280308"] = self.OnSubStart7280308,
        ["7280304"] = self.OnSubStart7280304,
        ["7280306"] = self.OnSubStart7280306,
        ["7280307"] = self.OnSubStart7280307,
        ["7280309"] = self.OnSubStart7280309
    }
end

function Quest72803:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7280301"] = self.OnSubFinish7280301,
        ["7280302"] = self.OnSubFinish7280302,
        ["7280303"] = self.OnSubFinish7280303,
        ["7280308"] = self.OnSubFinish7280308,
        ["7280304"] = self.OnSubFinish7280304,
        ["7280306"] = self.OnSubFinish7280306,
        ["7280307"] = self.OnSubFinish7280307,
        ["7280309"] = self.OnSubFinish7280309
    }
end

function Quest72803:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7280301"] = self.OnSubFailed7280301,
        ["7280302"] = self.OnSubFailed7280302,
        ["7280303"] = self.OnSubFailed7280303,
        ["7280308"] = self.OnSubFailed7280308,
        ["7280304"] = self.OnSubFailed7280304,
        ["7280306"] = self.OnSubFailed7280306,
        ["7280307"] = self.OnSubFailed7280307,
        ["7280309"] = self.OnSubFailed7280309
    }
end

function Quest72803:Start()
    print("Start")
end

function Quest72803:OnDestroy()
    print("OnDestroy")
end

function Quest72803:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72803:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72803:OnMainCanceled(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc3045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12085Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3051Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3001Data.alias, 3)
    local actor = actorMgr:GetActor(Datas.Q72803Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72803:createdaobaotuan()
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpcById(7280304, npcs.Npc3045Data.id, 1)
        self:CreateQuestNpcById(7280304, npcs.Npc12085Data.id, 2)
        self:RequestInteraction(npcs.Npc12085Data.alias)
    end, nil, nil, "")
end

function Quest72803:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:FinishQuestID(false, 7280309)
    end
end

function Quest72803:OnSubStart7280301(arg1)
    print("OnSubStart7280301")
end

function Quest72803:OnSubFinish7280301(arg1)
    print("OnSubFinish7280301")
    self.ShowBlackScreen(self, 0.2, 1, 0.5, function()
        self:NotifyTo("Npc3045", 1, true)
    end, nil, nil, "")

    self.NotifyTo(self, "Npc3047", 1, true)
end

function Quest72803:OnSubFailed7280301(arg1)
    print("OnSubFailed7280301")
end

function Quest72803:OnSubStart7280302(arg1)
    self:NotifyTo("Npc3045", 1, true)
    self:NotifyTo("Npc3047", 1, true)
end

function Quest72803:OnSubFinish7280302(arg1)
    print("OnSubFinish7280302")
end

function Quest72803:OnSubFailed7280302(arg1)
    print("OnSubFailed7280302")
end

function Quest72803:OnSubStart7280303(arg1)
    self:NotifyTo("Npc3045", 1, true)
    self:NotifyTo("Npc3047", 1, true)
    self:NarratorOnlyTask({{dialogID = 728030301, duration = 3}, {dialogID = 728030302, duration = 3}})
end

function Quest72803:OnSubFinish7280303(arg1)
    print("OnSubFinish7280303")
end

function Quest72803:OnSubFailed7280303(arg1)
    print("OnSubFailed7280303")
end

function Quest72803:OnSubStart7280308(arg1)
    print("OnSubStart7280308")
    self:NotifyTo("Npc3045", 1, true)
    self:NotifyTo("Npc3047", 1, true)
end

function Quest72803:OnSubFinish7280308(arg1)
    print("OnSubFinish7280308")
end

function Quest72803:OnSubFailed7280308(arg1)
    print("OnSubFailed7280308")
end

function Quest72803:OnSubStart7280304(arg1)
    print("OnSubStart7280304")
    self:CallDelay(2, self.createdaobaotuan)
    self:NotifyTo("Npc3047", 1, true)
    self:FinishQuestID(false, 7280303)
    self:FinishQuestID(false, 7280302)
end

function Quest72803:OnSubFinish7280304(arg1)
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc3045Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc12085Data.alias, 3)
        self:NotifyTo("Npc3045", 1, true)
    end)
end

function Quest72803:OnSubFailed7280304(arg1)
    print("OnSubFailed7280304")
end

function Quest72803:OnSubStart7280306(arg1)
    print("OnSubStart7280306")
    self:CreateQuestNpc(arg1, npcs.Npc3051Data.id, 2)
    self:NotifyTo("Npc3052", 1, true)
    self:NotifyTo("Npc3045", 1, true)
    self:NotifyTo("Npc3047", 1, true)
end

function Quest72803:OnSubFinish7280306(arg1)
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc3045Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc3051Data.alias, 3)
        self:NotifyTo("Npc3045", 1, true)
        self:LightNotifyTo("Npc3052", 0, true)
        self:LightNotifyTo("Npc3047", 0, true)
    end)
end

function Quest72803:OnSubFailed7280306(arg1)
    print("OnSubFailed7280306")
end

function Quest72803:OnSubStart7280307(arg1)
    print("OnSubStart7280307")
    self:CreateQuestNpc(arg1, npcs.Npc3001Data.id, 2)
    self:NotifyTo("Npc3045", 1, true)
end

function Quest72803:OnSubFinish7280307(arg1)
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc3045Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc3001Data.alias, 3)
        self:LightNotifyTo("Npc3045", 0, true)
    end)
end

function Quest72803:OnSubFailed7280307(arg1)
    print("OnSubFailed7280307")
end

function Quest72803:OnSubStart7280309(arg1)
    print("OnSubStart7280309")
    self:NotifyTo("Npc3045", 1, true)
end

function Quest72803:OnSubFinish7280309(arg1)
    print("OnSubFinish7280309")
end

function Quest72803:OnSubFailed7280309(arg1)
    print("OnSubFailed7280309")
end

return Quest72803

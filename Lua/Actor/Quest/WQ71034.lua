require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71034 = class("Quest71034", QuestActorProxy)
Quest71034.defaultAlias = "Quest71034"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71034:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71034:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7103401"] = self.OnSubStart7103401}
end

function Quest71034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7103401"] = self.OnSubFinish7103401}
end

function Quest71034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7103401"] = self.OnSubFailed7103401}
end

function Quest71034:Start()
    print("Start")
end

function Quest71034:OnDestroy()
    print("OnDestroy")
end

function Quest71034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71034:OnSubStart7103401(arg1)
    print("OnSubStart7103401")
    self.NotifyTo(self, npcs.Npc2409Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc2205Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc2305Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc2308Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc2309Data.alias, 1, true)
    self.CreateQuestNpc(self, arg1, npcs.Npc240901Data.id, 1)
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc240901Data.alias)
    questNpcActor:DoFreeStyle(1190, false)
    self.CreateQuestNpc(self, arg1, npcs.Npc220501Data.id, 2)
    local v = self.GetQuestNpcActor(self, npcs.Npc220501Data.alias)
    v:DoFreeStyle(1190, false)
    self.CreateQuestNpc(self, arg1, npcs.Npc230501Data.id, 3)
    local questNpcActor2 = self.GetQuestNpcActor(self, npcs.Npc230501Data.alias)
    questNpcActor2:DoFreeStyle(1060, false)
    self.CreateQuestNpc(self, arg1, npcs.Npc230901Data.id, 4)
    local questNpcActor3 = self.GetQuestNpcActor(self, npcs.Npc230901Data.alias)
    questNpcActor3:DoFreeStyle(5010, false)
    self.CreateQuestNpc(self, arg1, npcs.Npc230801Data.id, 5)
    local questNpcActor4 = self.GetQuestNpcActor(self, npcs.Npc230801Data.alias)
    questNpcActor4:DoFreeStyle(5010, false)
    questNpcActor:EnableHeadCtrl(false)
    v:EnableHeadCtrl(false)
    questNpcActor2:EnableHeadCtrl(false)
    questNpcActor3:EnableHeadCtrl(false)
    questNpcActor4:EnableHeadCtrl(false)
    self.CreateSpeechBubbleTask(self, npcs.Npc230801Data.id, 710340601, 3, true, 4, 7)
    self.CallDelay(self, 1.6, function()
        self:CreateSpeechBubbleTask(npcs.Npc230901Data.id, 710340701, 3, true, 4, 7)
    end)

    self.CallDelay(self, 2.3, function()
        self:CreateSpeechBubbleTask(npcs.Npc230501Data.id, 710340801, 3, true, 4, 7)
    end)

    if self.GetSubQuestState(self, 7103312) == 3 then
        actorMgr:CreateActorWithPos(datas.Q71034Trigger_.alias, datas.Q71034Trigger_.script, datas.Q71034Trigger_.id, 0, datas.Q71034Trigger_.point.pos, datas.Q71034Trigger_.point.rot, true, false, 3)
    end
end

function Quest71034:OnSubFinish7103401(arg1)
    print("OnSubFinish7103401")
    self:SafeDestroyQuestNpc(npcs.Npc240901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc220501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc230501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc230901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc230801Data.alias, 3)
    self:NotifyTo(npcs.Npc2409Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2205Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2305Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2308Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2309Data.alias, 0, true)
end

function Quest71034:OnSubFailed7103401(arg1)
    print("OnSubFailed7103401")
end

return Quest71034

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41114 = class("Quest41114", QuestActorProxy)
Quest41114.defaultAlias = "Quest41114"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41114:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41114:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4111401"] = self.OnSubStart4111401,
        ["4111407"] = self.OnSubStart4111407,
        ["4111408"] = self.OnSubStart4111408,
        ["4111403"] = self.OnSubStart4111403,
        ["4111414"] = self.OnSubStart4111414,
        ["4111404"] = self.OnSubStart4111404,
        ["4111405"] = self.OnSubStart4111405,
        ["4111409"] = self.OnSubStart4111409,
        ["4111410"] = self.OnSubStart4111410,
        ["4111411"] = self.OnSubStart4111411,
        ["4111412"] = self.OnSubStart4111412,
        ["4111415"] = self.OnSubStart4111415,
        ["4111413"] = self.OnSubStart4111413,
        ["4111416"] = self.OnSubStart4111416,
        ["4111402"] = self.OnSubStart4111402,
        ["4111406"] = self.OnSubStart4111406
    }
end

function Quest41114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4111401"] = self.OnSubFinish4111401,
        ["4111407"] = self.OnSubFinish4111407,
        ["4111408"] = self.OnSubFinish4111408,
        ["4111403"] = self.OnSubFinish4111403,
        ["4111414"] = self.OnSubFinish4111414,
        ["4111404"] = self.OnSubFinish4111404,
        ["4111405"] = self.OnSubFinish4111405,
        ["4111409"] = self.OnSubFinish4111409,
        ["4111410"] = self.OnSubFinish4111410,
        ["4111411"] = self.OnSubFinish4111411,
        ["4111412"] = self.OnSubFinish4111412,
        ["4111415"] = self.OnSubFinish4111415,
        ["4111413"] = self.OnSubFinish4111413,
        ["4111416"] = self.OnSubFinish4111416,
        ["4111402"] = self.OnSubFinish4111402,
        ["4111406"] = self.OnSubFinish4111406
    }
end

function Quest41114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4111401"] = self.OnSubFailed4111401,
        ["4111407"] = self.OnSubFailed4111407,
        ["4111408"] = self.OnSubFailed4111408,
        ["4111403"] = self.OnSubFailed4111403,
        ["4111414"] = self.OnSubFailed4111414,
        ["4111404"] = self.OnSubFailed4111404,
        ["4111405"] = self.OnSubFailed4111405,
        ["4111409"] = self.OnSubFailed4111409,
        ["4111410"] = self.OnSubFailed4111410,
        ["4111411"] = self.OnSubFailed4111411,
        ["4111412"] = self.OnSubFailed4111412,
        ["4111415"] = self.OnSubFailed4111415,
        ["4111413"] = self.OnSubFailed4111413,
        ["4111416"] = self.OnSubFailed4111416,
        ["4111402"] = self.OnSubFailed4111402,
        ["4111406"] = self.OnSubFailed4111406
    }
end

function Quest41114:Start()
    print("Start")
end

function Quest41114:OnDestroy()
    print("OnDestroy")
end

function Quest41114:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41114:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41114:OnMainCanceled(arg1)
    self.ActionSafeCall(self, function()
        self:GetQuestNpcActor(npcs.Npc10095Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc10011Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc10013Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        self:GetQuestNpcActor(npcs.Npc10012Data.alias):DestroyWithDisappear(false)
        self:UnSpawn(gadgets.BookInteraction.alias)
        self:UnSpawn(gadgets.Q4111403Target.alias)
        self:UnSpawn(gadgets.Q4111404Target.alias)
        self:UnSpawn(gadgets.Q4111413Target.alias)
        self:UnSpawn(datas.Q41114Trigger_.alias)
        self:UnSpawn(datas.Q41114Trigger2_.alias)
    end)
end

function Quest41114:DestroyAllNpc()
    print("DestroyAllNpc")
    self:GetQuestNpcActor(npcs.Npc10095Data.alias):Destroy(false)
    self:GetQuestNpcActor(npcs.Npc10011Data.alias):Destroy(false)
    self:GetQuestNpcActor(npcs.Npc10013Data.alias):Destroy(false)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc10012Data.alias):DestroyWithDisappear(false)
end

function Quest41114:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:ShowReadingDialog(100245)
    elseif arg1 == 2 then
        self:FinishQuestID(false, 4111402)
    end
end

function Quest41114:OnSubStart4111401(arg1)
    print("OnSubStart4111401")
    self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10011Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10012Data.id, 0)
    self:NotifyTo(npcs.Npc30015Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10095Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true)
    local v = self:GetQuestNpcActor(npcs.Npc10011Data.alias)
    v:DoFreeStyle(1130, true, nil, true, true)
    questNpcActor:EnableHeadCtrl(false)
    v:EnableHeadCtrl(false)
end

function Quest41114:OnSubFinish4111401(arg1)
    print("OnSubFinish4111401")
    self.ActionSafeCall(self, function()
        self:DestroyAllNpc()
        self:NotifyTo(npcs.Npc30015Data.alias, 0, true)
    end)
end

function Quest41114:OnSubFailed4111401(arg1)
    print("OnSubFailed4111401")
end

function Quest41114:OnSubStart4111407(arg1)
    print("OnSubStart4111407")
end

function Quest41114:OnSubFinish4111407(arg1)
    print("OnSubFinish4111407")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41114:OnSubFailed4111407(arg1)
    print("OnSubFailed4111407")
end

function Quest41114:OnSubStart4111408(arg1)
    print("OnSubStart4111408")
end

function Quest41114:OnSubFinish4111408(arg1)
    print("OnSubFinish4111408")
end

function Quest41114:OnSubFailed4111408(arg1)
    print("OnSubFailed4111408")
end

function Quest41114:OnSubStart4111403(arg1)
    print("OnSubStart4111403")
    self:SpawnGadget(arg1, gadgets.BookInteraction.id, 1)
    self:SpawnGadget(arg1, gadgets.Q4111403Target.id, 2)
end

function Quest41114:OnSubFinish4111403(arg1)
    print("OnSubFinish4111403")
    self:UnSpawn(gadgets.Q4111403Target.alias)
end

function Quest41114:OnSubFailed4111403(arg1)
    print("OnSubFailed4111403")
end

function Quest41114:OnSubStart4111414(arg1)
    print("OnSubStart4111414")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.PaimonData.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        self:RequestInteraction(npcs.PaimonData.alias)
    end, nil, questNpcCreateTask)
end

function Quest41114:OnSubFinish4111414(arg1)
    print("OnSubFinish4111414")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41114:OnSubFailed4111414(arg1)
    print("OnSubFailed4111414")
end

function Quest41114:OnSubStart4111404(arg1)
    print("OnSubStart4111404")
end

function Quest41114:OnSubFinish4111404(arg1)
    print("OnSubFinish4111404")
end

function Quest41114:OnSubFailed4111404(arg1)
    print("OnSubFailed4111404")
end

function Quest41114:OnSubStart4111405(arg1)
    print("OnSubStart4111405")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.PaimonData.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        self:RequestInteraction(npcs.PaimonData.alias)
    end, nil, questNpcCreateTask)
end

function Quest41114:OnSubFinish4111405(arg1)
    print("OnSubFinish4111405")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41114:OnSubFailed4111405(arg1)
    print("OnSubFailed4111405")
end

function Quest41114:OnSubStart4111409(arg1)
    print("OnSubStart4111409")
    self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 0)
    self:NotifyTo(npcs.Npc30015Data.alias, 1, true)
end

function Quest41114:OnSubFinish4111409(arg1)
    print("OnSubFinish4111409")
    self.ActionSafeCall(self, function()
        self:DestroyAllNpc()
        self:NotifyTo(npcs.Npc30015Data.alias, 0, true)
    end)
end

function Quest41114:OnSubFailed4111409(arg1)
    print("OnSubFailed4111409")
end

function Quest41114:OnSubStart4111410(arg1)
    print("OnSubStart4111410")
    self:CreateQuestNpc(arg1, npcs.Npc10013Data.id, 0)
    actorMgr:CreateActorWithPos(datas.Q41114Trigger_.alias, datas.Q41114Trigger_.script, datas.Q41114Trigger_.id, 0, datas.Q41114Trigger_.point.pos, datas.Q41114Trigger_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc10013Data.alias):DoFreeStyle(1120, true, nil, true, true)
end

function Quest41114:OnSubFinish4111410(arg1)
    print("OnSubFinish4111410")
end

function Quest41114:OnSubFailed4111410(arg1)
    print("OnSubFailed4111410")
end

function Quest41114:OnSubStart4111411(arg1)
    print("OnSubStart4111411")
    self:RequestInteraction(npcs.Npc10013Data.alias)
end

function Quest41114:OnSubFinish4111411(arg1)
    print("OnSubFinish4111411")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41114:OnSubFailed4111411(arg1)
    print("OnSubFailed4111411")
end

function Quest41114:OnSubStart4111412(arg1)
    print("OnSubStart4111412")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 41114)
    actorMgr:CreateActorWithPos(datas.Q41114Trigger2_.alias, datas.Q41114Trigger2_.script, datas.Q41114Trigger2_.id, 0, datas.Q41114Trigger2_.point.pos, datas.Q41114Trigger2_.point.rot, true, false, 3)
end

function Quest41114:OnSubFinish4111412(arg1)
    print("OnSubFinish4111412")
end

function Quest41114:OnSubFailed4111412(arg1)
    print("OnSubFailed4111412")
end

function Quest41114:OnSubStart4111415(arg1)
    print("OnSubStart4111415")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc10095Data.alias})
    self.CallDelay(self, 2, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc10095Data.id)
            arg1_2:RequestInteraction(npcs.Npc10095Data.alias)
        end, nil, questNpcCreateTask)
    end)
end

function Quest41114:OnSubFinish4111415(arg1)
    print("OnSubFinish4111415")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41114:OnSubFailed4111415(arg1)
    print("OnSubFailed4111415")
end

function Quest41114:OnSubStart4111413(arg1)
    print("OnSubStart4111413")
    self:SpawnGadget(arg1, gadgets.Q4111413Target.id, 1)
end

function Quest41114:OnSubFinish4111413(arg1)
    print("OnSubFinish4111413")
    self:UnSpawn(gadgets.Q4111413Target.alias)
end

function Quest41114:OnSubFailed4111413(arg1)
    print("OnSubFailed4111413")
end

function Quest41114:OnSubStart4111416(arg1)
    print("OnSubStart4111416")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc10095Data.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 0)
        self:RequestInteraction(npcs.Npc10095Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest41114:OnSubFinish4111416(arg1)
    print("OnSubFinish4111416")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41114:OnSubFailed4111416(arg1)
    print("OnSubFailed4111416")
end

function Quest41114:OnSubStart4111402(arg1)
    print("OnSubStart4111402")
end

function Quest41114:OnSubFinish4111402(arg1)
    print("OnSubFinish4111402")
end

function Quest41114:OnSubFailed4111402(arg1)
    print("OnSubFailed4111402")
end

function Quest41114:OnSubStart4111406(arg1)
    print("OnSubStart4111406")
end

function Quest41114:OnSubFinish4111406(arg1)
    print("OnSubFinish4111406")
end

function Quest41114:OnSubFailed4111406(arg1)
    print("OnSubFailed4111406")
end

return Quest41114

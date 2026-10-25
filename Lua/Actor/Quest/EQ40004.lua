require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40004 = class("Quest40004", QuestActorProxy)
Quest40004.defaultAlias = "Quest40004"
local clientData
local playerData
local paimonData
local keayaData
local xiaoData
local spyData
local thoarder1Data
local thoarder2Data
local narratorData

function Quest40004:OnDataLoaded()
    clientData = self.clientData
    playerData = clientData.PlayerData
    paimonData = clientData.PaimonData
    keayaData = clientData.KeayaData
    xiaoData = clientData.XiaoData
    spyData = clientData.SpyData
    thoarder1Data = clientData.Thoarder1Data
    thoarder2Data = clientData.Thoarder2Data
    narratorData = clientData.NarratorData
end

function Quest40004:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000400"] = self.OnSubStart4000400
    self.subStartHandlers["4000401"] = self.OnSubStart4000401
    self.subStartHandlers["4000402"] = self.OnSubStart4000402
    self.subStartHandlers["4000403"] = self.OnSubStart4000403
    self.subStartHandlers["4000406"] = self.OnSubStart4000406
    self.subStartHandlers["4000407"] = self.OnSubStart4000407
    self.subStartHandlers["4000408"] = self.OnSubStart4000408
    self.subStartHandlers["4000409"] = self.OnSubStart4000409
end

function Quest40004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000400"] = self.OnSubFinish4000400
    self.subFinishHandlers["4000401"] = self.OnSubFinish4000401
    self.subFinishHandlers["4000402"] = self.OnSubFinish4000402
    self.subFinishHandlers["4000403"] = self.OnSubFinish4000403
    self.subFinishHandlers["4000406"] = self.OnSubFinish4000406
    self.subFinishHandlers["4000407"] = self.OnSubFinish4000407
    self.subFinishHandlers["4000408"] = self.OnSubFinish4000408
    self.subFinishHandlers["4000409"] = self.OnSubFinish4000409
end

function Quest40004:OnSubStart4000400(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest40004:OnSubFinish4000400(arg1)
    print("4000400 OnFinish")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTaskLegacy(narratorData.Story1, nil, "StoryCut")
    end)
end

function Quest40004:OnSubStart4000402(arg1)
    print("4000402 OnStart")
    self:CreateQuestNpc(arg1, keayaData.ID)
end

function Quest40004:OnSubFinish4000402(arg1)
    print("4000402 OnFinish")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest40004:OnSubStart4000403(arg1)
    print("4000403 OnStart")
    self:CreateQuestNpc(arg1, spyData.ID, 0)
end

function Quest40004:OnSubFinish4000403(arg1)
    print("4000403 OnFinish")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest40004:OnSubStart4000405(arg1)
    print("4000405 OnStart")
end

function Quest40004:OnSubStart4000406(arg1)
    print("4000406 OnStart")
    self:CreateQuestNpc(arg1, thoarder1Data.ID, 0)
    self:CreateQuestNpc(arg1, thoarder2Data.ID, 0)
end

function Quest40004:OnSubFinish4000409(arg1)
    print("4000409 OnFinish")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(thoarder1Data.Alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = self:GetQuestNpcActor(thoarder2Data.Alias)
        if v ~= nil then
            v:Destroy(false)
        end

        local questNpcActor2 = self:GetQuestNpcActor(xiaoData.Alias)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        local questNpcActor3 = self:GetQuestNpcActor(paimonData.Alias)
        if questNpcActor3 ~= nil then
            questNpcActor3:DestroyWithDisappear(false)
        end
    end)
end

function Quest40004:OnSubStart4000407(arg1)
    print("4000407 OnStart")
    actorMgr:CreateActorWithPos("Q40004Trigger1", "Actor/Gadget/Q40004Trigger1", 70900002, 0, playerData.BornPos, playerData.BornDir, true)
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(thoarder1Data.Alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = self:GetQuestNpcActor(thoarder2Data.Alias)
        if v ~= nil then
            v:Destroy(false)
        end

        local questNpcActor2 = self:GetQuestNpcActor(xiaoData.Alias)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        local questNpcActor3 = self:GetQuestNpcActor(paimonData.Alias)
        if questNpcActor3 ~= nil then
            questNpcActor3:DestroyWithDisappear(false)
        end
    end)
end

function Quest40004:OnSubFinish4000407(arg1)
    local actor = actorMgr:GetActor("Q40007Trigger1")
    if actor ~= nil then
        actor:Destroy(false)
    end
end

function Quest40004:OnSubStart4000408(arg1)
    print("4000408 OnStart")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask({thoarder1Data.Alias, thoarder2Data.Alias})
    self:TransmitPlayer(3, playerData.BornPos, playerData.BornDir, nil, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, thoarder1Data.ID, 0)
        arg1_2:CreateQuestNpc(arg1, thoarder2Data.ID, 0)
    end, questNpcCreateTask)
end

function Quest40004:OnSubFinish4000408(arg1)
    print("4000408 OnFinish")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(xiaoData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = self:GetQuestNpcActor(paimonData.Alias)
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest40004:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Invoke show picture")
        self:ShowQuestPictureDialog(245)
    end

    if arg1 == 2 then
        print("Invoke show lettel")
        self:ShowReadingDialog(100420)
    end
end

function Quest40004:Start() end
function Quest40004:OnDestroy() end
return Quest40004

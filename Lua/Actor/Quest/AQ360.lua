require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest360 = class("Quest360", QuestActorProxy)
Quest360.defaultAlias = "Quest360"

function Quest360:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["36001"] = self.OnSubStart36001
    self.subStartHandlers["36003"] = self.OnSubStart36003
    self.subStartHandlers["36004"] = self.OnSubStart36004
    self.subStartHandlers["36005"] = self.OnSubStart36005
end

function Quest360:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["36001"] = self.OnSubFinish36001
    self.subFinishHandlers["36003"] = self.OnSubFinish36003
    self.subFinishHandlers["36004"] = self.OnSubFinish36004
    self.subFinishHandlers["36005"] = self.OnSubFinish36005
end

function Quest360:OnEnableInput()
    print("360 Finish: Enable Player Input")
    globalActor:EnablePlayerInput(true)
end

function Quest360:OnSubFinish36001(arg1)
    print("36001 Finish : Story2")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story2)
end

function Quest360:OnSubFinish36003(arg1)
    print("36003 Finish : Creat NPC")
end

function Quest360:OnSubStart36004(arg1)
    print("36004 Start : interact")
    self:CallDelay(2, self.Delay1)
end

function Quest360:Delay1(arg1)
    print("36004 Start : interact")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({self.clientData.AmborData.Ambor})
    self:ShowBlackScreen(0.5, 1.0, 0, self:CreateQuestNpcById(36003, self.clientData.AmborData.AmborID), self:RequestInteraction(self.clientData.AmborData.Ambor), questNpcCreateTask)
end

function Quest360:OnSubFinish36004(arg1)
    print("36004 Finish : Ambor Vanish")
    self:ActionPreSafeCall(self.Finish36004Do)
end

function Quest360:Finish36004Do(arg1)
    local amborData = self.clientData.AmborData
    local questNpcActor = self:GetQuestNpcActor(self.clientData.AmborData.Ambor)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if v ~= nil then
        v:DestroyWithDisappear(false)
    end
end

function Quest360:Start() end
function Quest360:OnDestroy() end
return Quest360

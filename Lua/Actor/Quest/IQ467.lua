require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest467 = class("Quest467", QuestActorProxy)
Quest467.defaultAlias = "Quest467"
local clientData
local paimonData
local subIDs

function Quest467:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
end

function Quest467:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["46701"] = self.OnSubStart46701
    self.subStartHandlers["46702"] = self.OnSubStart46702
    self.subStartHandlers["46703"] = self.OnSubStart46703
end

function Quest467:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["46701"] = self.OnSubFinish46701
    self.subFinishHandlers["46702"] = self.OnSubFinish46702
    self.subFinishHandlers["46703"] = self.OnSubFinish46703
end

function Quest467:PaimonVanish() end

function Quest467:OnSubStart46701(arg1)
    print("46701 Start : Creat Lynn")
end

function Quest467:OnSubFinish46701(arg1)
    print("46701 Start : Creat Lynn")
    self:NarratorOnlyTask(self.clientData.NarratorData.Story1)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q467Lynn1").pos, 1.5, 1.5, true)
    globalActor:StopLocalAvatar()
    globalActor:EnablePlayerInput(false)
    self:CallDelay(1.5, self.OnEnableInput)
end

function Quest467:OnEnableInput()
    print("467 Finish: Enable Player Input")
    globalActor:EnablePlayerInput(true)
end

function Quest467:OnSubFinish46702(arg1)
    print("46702 Finish:  Paimon Des")
    self:ActionSafeCall(self.Finish46702Do)
end

function Quest467:Finish46702Do(arg1)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest467:OnSubFinish46703(arg1)
    print("46703 Finish:  Paimon Des")
    self:ActionSafeCall(self.Finish46703Do)
end

function Quest467:Finish46703Do(arg1)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest467:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Paimon Creat")
        local paimonData = self.clientData.PaimonData
        self:CreateQuestNpcById(46702, paimonData.Paimon, 1)
    end
end

function Quest467:Start() end
function Quest467:OnDestroy() end
return Quest467

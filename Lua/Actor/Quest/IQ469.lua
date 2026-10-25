require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest469 = class("Quest469", QuestActorProxy)
Quest469.defaultAlias = "Quest469"
local clientData
local paimonData
local subIDs

function Quest469:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
end

function Quest469:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["46901"] = self.OnSubStart46901
    self.subStartHandlers["46902"] = self.OnSubStart46902
    self.subStartHandlers["46903"] = self.OnSubStart46903
    self.subStartHandlers["46904"] = self.OnSubStart46904
end

function Quest469:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["46901"] = self.OnSubFinish46901
    self.subFinishHandlers["46902"] = self.OnSubFinish46902
    self.subFinishHandlers["46903"] = self.OnSubFinish46903
    self.subFinishHandlers["46904"] = self.OnSubFinish46904
end

function Quest469:PaimonVanish() end

function Quest469:OnSubFinish46904(arg1)
    print("46904 Finish : Story")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story2, nil, "StoryCut")
end

function Quest469:OnSubStart46901(arg1) end

function Quest469:OnSubFinish46901(arg1)
    print("46901 Finish : Story")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story1)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q469Statue").pos, 1, 3, true)
    globalActor:StopLocalAvatar()
    globalActor:EnablePlayerInput(false)
    self:CallDelay(3, self.OnEnableInput)
end

function Quest469:OnEnableInput()
    print("469 Finish: Enable Player Input")
    globalActor:EnablePlayerInput(true)
end

function Quest469:OnSubFinish46902(arg1)
    print("46902 Finish : Creat Paimon")
end

function Quest469:Start() end
function Quest469:OnDestroy() end
return Quest469

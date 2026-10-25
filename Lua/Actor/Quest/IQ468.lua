require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest468 = class("Quest468", QuestActorProxy)
Quest468.defaultAlias = "Quest468"
local Q468ClientConfig = require("Quest/Client/Q468ClientConfig")

local lynnData = Q468ClientConfig.LynnData
local guardData = Q468ClientConfig.GuardData

function Quest468:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["46801"] = self.OnSubStart46801
    self.subStartHandlers["46802"] = self.OnSubStart46802
    self.subStartHandlers["46803"] = self.OnSubStart46803
end

function Quest468:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["46801"] = self.OnSubFinish46801
    self.subFinishHandlers["46802"] = self.OnSubFinish46802
    self.subFinishHandlers["46803"] = self.OnSubFinish46803
end

function Quest468:PaimonVanish() end

function Quest468:OnSubStart46801(arg1)
    print("46801 Start : Creat Lynn")
end

function Quest468:OnSubFinish46801(arg1)
    print("46801 Start : Creat Lynn")
    self:NarratorOnlyTask(self.clientData.NarratorData.Story1)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q468Lynn1").pos, 1.5, 3, true)
    globalActor:StopLocalAvatar()
    globalActor:EnablePlayerInput(false)
    self:CallDelay(3, self.OnEnableInput)
end

function Quest468:OnEnableInput()
    print("468 Finish: Enable Player Input")
    globalActor:EnablePlayerInput(true)
end

function Quest468:Start() end
function Quest468:OnDestroy() end
return Quest468

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest994 = class("Quest994", QuestActorProxy)
Quest994.defaultAlias = "Quest994"
local Q994ClientConfig = require("Quest/Client/Q994ClientConfig")

local subIDs = Q994ClientConfig.SubIDs
local qinData = Q994ClientConfig.QinData

function Quest994:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["99401"] = self.OnSubStart99401
end

function Quest994:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["99401"] = self.OnSubFinish99401
end

function Quest994:OnSubStart99401(arg1)
    print("99401 start:...")
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true, false, 1004)
end

function Quest994:OnSubFinish99401(arg1)
    print("OnFinished 99401")
end

function Quest994:Start() end
function Quest994:OnDestroy() end
return Quest994

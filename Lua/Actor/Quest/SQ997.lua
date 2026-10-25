require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest997 = class("Quest997", QuestActorProxy)
Quest997.defaultAlias = "Quest997"
local Q997ClientConfig = require("Quest/Client/Q997ClientConfig")

local subIDs = Q997ClientConfig.SubIDs
local qinData = Q997ClientConfig.QinData
local lisaData = Q997ClientConfig.LisaData
local amborData = Q997ClientConfig.AmborData
local gaiaData = Q997ClientConfig.GaiaData

function Quest997:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["99701"] = self.OnSubStart99701
end

function Quest997:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["99701"] = self.OnSubFinish99701
end

function Quest997:OnSubStart99701(arg1)
    print("99701 start:...")
    actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos, amborData.bornDir, true, false, 1004, true, 1)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true, false, 1004, true, 1)
    actorMgr:CreateActorWithPos(gaiaData.Gaia, gaiaData.GaiaScript, gaiaData.GaiaID, 0, gaiaData.bornPos, gaiaData.bornDir, true, false, 1004, true, 1)
    actorMgr:CreateActorWithPos(lisaData.Lisa, lisaData.LisaScript, lisaData.LisaID, 0, lisaData.bornPos, lisaData.bornDir, true, false, 1004, true, 1)
end

function Quest997:OnSubFinish99701(arg1)
    print("OnFinished 99701")
end

function Quest997:Start() end
function Quest997:OnDestroy() end
return Quest997

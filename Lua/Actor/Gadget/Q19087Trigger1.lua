require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19087Trigger1 = class("Q19087Trigger1", GadgetActorProxy)
Q19087Trigger1.defaultAlias = "Q19087Trigger1"
local Q19087ClientConfig = require("Quest/Client/Q19087ClientConfig")

local mainID = Q19087ClientConfig.MainID
local actorAlias = Q19087ClientConfig.ActorAlias
local subIDs = Q19087ClientConfig.SubIDs
local npcs = Q19087ClientConfig.Npcs
local datas = Q19087ClientConfig.Datas

function Q19087Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19087Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19087Trigger1:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1908701)
    self:DestroySelf()
end

function Q19087Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19087Trigger1

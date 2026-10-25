require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19087Trigger4 = class("Q19087Trigger4", GadgetActorProxy)
Q19087Trigger4.defaultAlias = "Q19087Trigger4"
local Q19087ClientConfig = require("Quest/Client/Q19087ClientConfig")

local mainID = Q19087ClientConfig.MainID
local actorAlias = Q19087ClientConfig.ActorAlias
local subIDs = Q19087ClientConfig.SubIDs
local npcs = Q19087ClientConfig.Npcs
local datas = Q19087ClientConfig.Datas

function Q19087Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19087Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19087Trigger4:TriggerIn()
    print("TriggerIn")
end

function Q19087Trigger4:TriggerOut()
    actorMgr:GetActor(actorAlias):FinishQuestID(true, 1908706)
    self:DestroySelf()
end

return Q19087Trigger4

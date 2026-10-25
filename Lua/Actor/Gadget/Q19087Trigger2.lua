require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19087Trigger2 = class("Q19087Trigger2", GadgetActorProxy)
Q19087Trigger2.defaultAlias = "Q19087Trigger2"
local Q19087ClientConfig = require("Quest/Client/Q19087ClientConfig")

local mainID = Q19087ClientConfig.MainID
local actorAlias = Q19087ClientConfig.ActorAlias
local subIDs = Q19087ClientConfig.SubIDs
local npcs = Q19087ClientConfig.Npcs
local datas = Q19087ClientConfig.Datas

function Q19087Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19087Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19087Trigger2:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1908705)
    self:DestroySelf()
end

function Q19087Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q19087Trigger2

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200604Trigger = class("Q200604Trigger", GadgetActorProxy)
Q200604Trigger.defaultAlias = "Q200604Trigger"
local Q2006ClientConfig = require("Quest/Client/Q2006ClientConfig")

local mainID = Q2006ClientConfig.MainID
local actorAlias = Q2006ClientConfig.ActorAlias
local subIDs = Q2006ClientConfig.SubIDs
local npcs = Q2006ClientConfig.Npcs
local datas = Q2006ClientConfig.Datas

function Q200604Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200604Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200604Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 200604)
    self:DestroySelf()
end

function Q200604Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200604Trigger

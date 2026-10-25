require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300006Trigger = class("Q7300006Trigger", GadgetActorProxy)
Q7300006Trigger.defaultAlias = "Q7300006Trigger"
local Q73000ClientConfig = require("Quest/Client/Q73000ClientConfig")

local subIDs = Q73000ClientConfig.SubIDs
local npcs = Q73000ClientConfig.Npcs
local datas = Q73000ClientConfig.Datas

function Q7300006Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7300006Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300006Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7300006)
    self:DestroySelf()
end

function Q7300006Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7300006Trigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306322Trigger = class("Q7306322Trigger", GadgetActorProxy)
Q7306322Trigger.defaultAlias = "Q7306322Trigger"
local Q73063ClientConfig = require("Quest/Client/Q73063ClientConfig")

local subIDs = Q73063ClientConfig.SubIDs
local npcs = Q73063ClientConfig.Npcs
local datas = Q73063ClientConfig.Datas

function Q7306322Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306322Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306322Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306322)
    self:DestroySelf()
end

function Q7306322Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306322Trigger

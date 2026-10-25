require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008322Trigger = class("Q4008322Trigger", GadgetActorProxy)
Q4008322Trigger.defaultAlias = "Q4008322Trigger"
local Q40083ClientConfig = require("Quest/Client/Q40083ClientConfig")

local subIDs = Q40083ClientConfig.SubIDs
local npcs = Q40083ClientConfig.Npcs
local datas = Q40083ClientConfig.Datas

function Q4008322Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008322Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008322Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008322)
    self:DestroySelf()
end

function Q4008322Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008322Trigger

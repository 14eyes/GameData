require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306203Trigger = class("Q7306203Trigger", GadgetActorProxy)
Q7306203Trigger.defaultAlias = "Q7306203Trigger"
local Q73062ClientConfig = require("Quest/Client/Q73062ClientConfig")

local subIDs = Q73062ClientConfig.SubIDs
local npcs = Q73062ClientConfig.Npcs
local datas = Q73062ClientConfig.Datas

function Q7306203Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306203Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306203Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306203)
    self:DestroySelf()
end

function Q7306203Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306203Trigger

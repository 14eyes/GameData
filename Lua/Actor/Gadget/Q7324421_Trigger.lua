require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7324421_Trigger = class("Q7324421_Trigger", GadgetActorProxy)
Q7324421_Trigger.defaultAlias = "Q7324421_Trigger"
local Q73244ClientConfig = require("Quest/Client/Q73244ClientConfig")

local this
local subIDs = Q73244ClientConfig.SubIDs
local npcs = Q73244ClientConfig.Npcs
local datas = Q73244ClientConfig.Datas

function Q7324421_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7324421_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(2.314881, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7324421_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7324421)
    this:DestroySelf()
end

function Q7324421_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7324421_Trigger

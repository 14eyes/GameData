require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306335Trigger = class("Q7306335Trigger", GadgetActorProxy)
Q7306335Trigger.defaultAlias = "Q7306335Trigger"
local Q73063ClientConfig = require("Quest/Client/Q73063ClientConfig")

local subIDs = Q73063ClientConfig.SubIDs
local npcs = Q73063ClientConfig.Npcs
local datas = Q73063ClientConfig.Datas

function Q7306335Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306335Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306335Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306335)
    self:DestroySelf()
end

function Q7306335Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306335Trigger

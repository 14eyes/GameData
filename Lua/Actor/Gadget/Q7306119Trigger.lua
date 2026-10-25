require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306119Trigger = class("Q7306119Trigger", GadgetActorProxy)
Q7306119Trigger.defaultAlias = "Q7306119Trigger"
local Q73061ClientConfig = require("Quest/Client/Q73061ClientConfig")

local subIDs = Q73061ClientConfig.SubIDs
local npcs = Q73061ClientConfig.Npcs
local datas = Q73061ClientConfig.Datas

function Q7306119Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306119Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306119Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306119)
    self:DestroySelf()
end

function Q7306119Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306119Trigger

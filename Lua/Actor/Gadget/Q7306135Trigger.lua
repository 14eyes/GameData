require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306135Trigger = class("Q7306135Trigger", GadgetActorProxy)
Q7306135Trigger.defaultAlias = "Q7306135Trigger"
local Q73061ClientConfig = require("Quest/Client/Q73061ClientConfig")

local subIDs = Q73061ClientConfig.SubIDs
local npcs = Q73061ClientConfig.Npcs
local datas = Q73061ClientConfig.Datas

function Q7306135Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306135Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306135Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306135)
    self:DestroySelf()
end

function Q7306135Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306135Trigger

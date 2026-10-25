require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306112Trigger = class("Q7306112Trigger", GadgetActorProxy)
Q7306112Trigger.defaultAlias = "Q7306112Trigger"
local Q73061ClientConfig = require("Quest/Client/Q73061ClientConfig")

local subIDs = Q73061ClientConfig.SubIDs
local npcs = Q73061ClientConfig.Npcs
local datas = Q73061ClientConfig.Datas

function Q7306112Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306112Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = -7.0, y = 0.0, z = -18.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306112Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306112)
    self:DestroySelf()
end

function Q7306112Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306112Trigger

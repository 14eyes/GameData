require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306121Trigger = class("Q7306121Trigger", GadgetActorProxy)
Q7306121Trigger.defaultAlias = "Q7306121Trigger"
local Q73061ClientConfig = require("Quest/Client/Q73061ClientConfig")

local subIDs = Q73061ClientConfig.SubIDs
local npcs = Q73061ClientConfig.Npcs
local datas = Q73061ClientConfig.Datas

function Q7306121Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306121Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306121Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306121)
    self:DestroySelf()
end

function Q7306121Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306121Trigger

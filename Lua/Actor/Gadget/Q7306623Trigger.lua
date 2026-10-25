require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306623Trigger = class("Q7306623Trigger", GadgetActorProxy)
Q7306623Trigger.defaultAlias = "Q7306623Trigger"
local Q73066ClientConfig = require("Quest/Client/Q73066ClientConfig")

local subIDs = Q73066ClientConfig.SubIDs
local npcs = Q73066ClientConfig.Npcs
local datas = Q73066ClientConfig.Datas

function Q7306623Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306623Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306623Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306623)
    self:DestroySelf()
end

function Q7306623Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306623Trigger

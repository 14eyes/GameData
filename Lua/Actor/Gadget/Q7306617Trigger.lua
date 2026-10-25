require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306617Trigger = class("Q7306617Trigger", GadgetActorProxy)
Q7306617Trigger.defaultAlias = "Q7306617Trigger"
local Q73066ClientConfig = require("Quest/Client/Q73066ClientConfig")

local subIDs = Q73066ClientConfig.SubIDs
local npcs = Q73066ClientConfig.Npcs
local datas = Q73066ClientConfig.Datas

function Q7306617Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306617Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306617Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306617)
    self:DestroySelf()
end

function Q7306617Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306617Trigger

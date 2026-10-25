require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306909Trigger = class("Q7306909Trigger", GadgetActorProxy)
Q7306909Trigger.defaultAlias = "Q7306909Trigger"
local Q73069ClientConfig = require("Quest/Client/Q73069ClientConfig")

local subIDs = Q73069ClientConfig.SubIDs
local npcs = Q73069ClientConfig.Npcs
local datas = Q73069ClientConfig.Datas

function Q7306909Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306909Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(56, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306909Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306909)
    self:DestroySelf()
end

function Q7306909Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306909Trigger

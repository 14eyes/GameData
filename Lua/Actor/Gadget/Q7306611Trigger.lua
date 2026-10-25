require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306611Trigger = class("Q7306611Trigger", GadgetActorProxy)
Q7306611Trigger.defaultAlias = "Q7306611Trigger"
local Q73066ClientConfig = require("Quest/Client/Q73066ClientConfig")

local subIDs = Q73066ClientConfig.SubIDs
local npcs = Q73066ClientConfig.Npcs
local datas = Q73066ClientConfig.Datas

function Q7306611Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306611Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(30, 15, true, {x = 0.0, y = 10.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306611Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 0)
    self:DestroySelf()
end

function Q7306611Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306611Trigger

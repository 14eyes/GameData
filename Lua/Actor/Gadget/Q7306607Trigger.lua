require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306607Trigger = class("Q7306607Trigger", GadgetActorProxy)
Q7306607Trigger.defaultAlias = "Q7306607Trigger"
local Q73066ClientConfig = require("Quest/Client/Q73066ClientConfig")

local subIDs = Q73066ClientConfig.SubIDs
local npcs = Q73066ClientConfig.Npcs
local datas = Q73066ClientConfig.Datas

function Q7306607Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306607Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(35, 15, true, {x = 0.0, y = 10.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306607Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306607)
    self:DestroySelf()
end

function Q7306607Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306607Trigger

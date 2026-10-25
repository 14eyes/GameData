require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305901Trigger = class("Q7305901Trigger", GadgetActorProxy)
Q7305901Trigger.defaultAlias = "Q7305901Trigger"
local Q73059ClientConfig = require("Quest/Client/Q73059ClientConfig")

local subIDs = Q73059ClientConfig.SubIDs
local npcs = Q73059ClientConfig.Npcs
local datas = Q73059ClientConfig.Datas

function Q7305901Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305901Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305901Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305901)
    self:DestroySelf()
end

function Q7305901Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305901Trigger

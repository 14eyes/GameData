require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23003Trigger = class("Q23003Trigger", GadgetActorProxy)
Q23003Trigger.defaultAlias = "Q23003Trigger"
local Q23003ClientConfig = require("Quest/Client/Q23003ClientConfig")

local subIDs = Q23003ClientConfig.SubIDs
local npcs = Q23003ClientConfig.Npcs
local datas = Q23003ClientConfig.Datas

function Q23003Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23003Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q23003Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2300305)
    self:DestroySelf()
end

function Q23003Trigger:TriggerOut()
    print("TriggerOut")
end

return Q23003Trigger

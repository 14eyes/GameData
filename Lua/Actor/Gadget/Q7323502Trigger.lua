require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323502Trigger = class("Q7323502Trigger", GadgetActorProxy)
Q7323502Trigger.defaultAlias = "Q7323502Trigger"
local Q73235ClientConfig = require("Quest/Client/Q73235ClientConfig")

local this
local subIDs = Q73235ClientConfig.SubIDs
local npcs = Q73235ClientConfig.Npcs
local points = Q73235ClientConfig.Points
local datas = Q73235ClientConfig.Datas

function Q7323502Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323502Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323502Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323502)
    this:DestroySelf()
end

function Q7323502Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323502Trigger

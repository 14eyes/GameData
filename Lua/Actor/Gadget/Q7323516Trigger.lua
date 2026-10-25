require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323516Trigger = class("Q7323516Trigger", GadgetActorProxy)
Q7323516Trigger.defaultAlias = "Q7323516Trigger"
local Q73235ClientConfig = require("Quest/Client/Q73235ClientConfig")

local this
local subIDs = Q73235ClientConfig.SubIDs
local npcs = Q73235ClientConfig.Npcs
local points = Q73235ClientConfig.Points
local datas = Q73235ClientConfig.Datas

function Q7323516Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323516Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, function(arg1) end)
end

function Q7323516Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323516)
    this:DestroySelf()
end

function Q7323516Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323516Trigger

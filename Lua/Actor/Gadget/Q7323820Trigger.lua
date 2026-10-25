require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323820Trigger = class("Q7323820Trigger", GadgetActorProxy)
Q7323820Trigger.defaultAlias = "Q7323820Trigger"
local Q73238ClientConfig = require("Quest/Client/Q73238ClientConfig")

local this
local subIDs = Q73238ClientConfig.SubIDs
local npcs = Q73238ClientConfig.Npcs
local points = Q73238ClientConfig.Points
local datas = Q73238ClientConfig.Datas

function Q7323820Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323820Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323820Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323820)
    this:DestroySelf()
end

function Q7323820Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323820Trigger

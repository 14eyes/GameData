require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600209Trigger = class("Q600209Trigger", GadgetActorProxy)
Q600209Trigger.defaultAlias = "Q600209Trigger"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600209Trigger:OnPostDataPrepare()
    print("Q600209Trigger - OnPostDataPrepare")
    this = self
end

function Q600209Trigger:OnPostComponentPrepare()
    print("Q600209Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600209Trigger:TriggerIn()
    print("Q600209Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 600209)
    this:DestroySelf()
end

function Q600209Trigger:PreTriggerIn()
    print("Q600209Trigger - PreTriggerIn")
end

function Q600209Trigger:LightUpTriggerIn()
    print("Q600209Trigger - LightUpTriggerIn")
end

function Q600209Trigger:TriggerOut()
    print("Q600209Trigger - TriggerOut")
end

return Q600209Trigger

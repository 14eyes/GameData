require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7526701Trigger = class("Q7526701Trigger", GadgetActorProxy)
Q7526701Trigger.defaultAlias = "Q7526701Trigger"
local Q75267ClientConfig = require("Quest/Client/Q75267ClientConfig")

local this
local subIDs = Q75267ClientConfig.SubIDs
local npcs = Q75267ClientConfig.Npcs
local points = Q75267ClientConfig.Points

function Q7526701Trigger:OnPostDataPrepare()
    print("Q7526701Trigger - OnPostDataPrepare")
    this = self
end

function Q7526701Trigger:OnPostComponentPrepare()
    print("Q7526701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75267)
end

function Q7526701Trigger:TriggerIn()
    print("Q7526701Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7526701)
    this:DestroySelf()
end

function Q7526701Trigger:PreTriggerIn()
    print("Q7526701Trigger - PreTriggerIn")
end

function Q7526701Trigger:LightUpTriggerIn()
    print("Q7526701Trigger - LightUpTriggerIn")
end

function Q7526701Trigger:TriggerOut()
    print("Q7526701Trigger - TriggerOut")
end

return Q7526701Trigger

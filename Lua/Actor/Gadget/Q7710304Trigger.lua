require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710304Trigger = class("Q7710304Trigger", GadgetActorProxy)
Q7710304Trigger.defaultAlias = "Q7710304Trigger"
local Q77103ClientConfig = require("Quest/Client/Q77103ClientConfig")

local this
local subIDs = Q77103ClientConfig.SubIDs
local datas = Q77103ClientConfig.Datas
local npcs = Q77103ClientConfig.Npcs
local points = Q77103ClientConfig.Points

function Q7710304Trigger:OnPostDataPrepare()
    print("Q7710304Trigger - OnPostDataPrepare")
    this = self
end

function Q7710304Trigger:OnPostComponentPrepare()
    print("Q7710304Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77103)
end

function Q7710304Trigger:TriggerIn()
    print("Q7710304Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710304)
    this:DestroySelf()
end

function Q7710304Trigger:PreTriggerIn()
    print("Q7710304Trigger - PreTriggerIn")
end

function Q7710304Trigger:LightUpTriggerIn()
    print("Q7710304Trigger - LightUpTriggerIn")
end

function Q7710304Trigger:TriggerOut()
    print("Q7710304Trigger - TriggerOut")
end

return Q7710304Trigger

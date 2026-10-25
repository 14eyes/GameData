require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710401Trigger = class("Q7710401Trigger", GadgetActorProxy)
Q7710401Trigger.defaultAlias = "Q7710401Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710401Trigger:OnPostDataPrepare()
    print("Q7710401Trigger - OnPostDataPrepare")
    this = self
end

function Q7710401Trigger:OnPostComponentPrepare()
    print("Q7710401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710401Trigger:TriggerIn()
    print("Q7710401Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710401)
    this:DestroySelf()
end

function Q7710401Trigger:PreTriggerIn()
    print("Q7710401Trigger - PreTriggerIn")
end

function Q7710401Trigger:LightUpTriggerIn()
    print("Q7710401Trigger - LightUpTriggerIn")
end

function Q7710401Trigger:TriggerOut()
    print("Q7710401Trigger - TriggerOut")
end

return Q7710401Trigger

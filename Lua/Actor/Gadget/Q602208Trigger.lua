require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602208Trigger = class("Q602208Trigger", GadgetActorProxy)
Q602208Trigger.defaultAlias = "Q602208Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602208Trigger:OnPostDataPrepare()
    print("Q602208Trigger - OnPostDataPrepare")
    this = self
end

function Q602208Trigger:OnPostComponentPrepare()
    print("Q602208Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602208Trigger:TriggerIn()
    print("Q602208Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602208)
    this:DestroySelf()
end

function Q602208Trigger:PreTriggerIn()
    print("Q602208Trigger - PreTriggerIn")
end

function Q602208Trigger:LightUpTriggerIn()
    print("Q602208Trigger - LightUpTriggerIn")
end

function Q602208Trigger:TriggerOut()
    print("Q602208Trigger - TriggerOut")
end

return Q602208Trigger

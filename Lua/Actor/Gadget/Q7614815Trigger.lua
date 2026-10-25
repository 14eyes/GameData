require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614815Trigger = class("Q7614815Trigger", GadgetActorProxy)
Q7614815Trigger.defaultAlias = "Q7614815Trigger"
local Q76148ClientConfig = require("Quest/Client/Q76148ClientConfig")

local this
local subIDs = Q76148ClientConfig.SubIDs
local datas = Q76148ClientConfig.Datas
local npcs = Q76148ClientConfig.Npcs
local points = Q76148ClientConfig.Points

function Q7614815Trigger:OnPostDataPrepare()
    print("Q7614815Trigger - OnPostDataPrepare")
    this = self
end

function Q7614815Trigger:OnPostComponentPrepare()
    print("Q7614815Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76148)
end

function Q7614815Trigger:TriggerIn()
    print("Q7614815Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614815)
    this:DestroySelf()
end

function Q7614815Trigger:PreTriggerIn()
    print("Q7614815Trigger - PreTriggerIn")
end

function Q7614815Trigger:LightUpTriggerIn()
    print("Q7614815Trigger - LightUpTriggerIn")
end

function Q7614815Trigger:TriggerOut()
    print("Q7614815Trigger - TriggerOut")
end

return Q7614815Trigger

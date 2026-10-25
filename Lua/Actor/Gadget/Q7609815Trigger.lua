require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609815Trigger = class("Q7609815Trigger", GadgetActorProxy)
Q7609815Trigger.defaultAlias = "Q7609815Trigger"
local Q76098ClientConfig = require("Quest/Client/Q76098ClientConfig")

local this
local subIDs = Q76098ClientConfig.SubIDs
local datas = Q76098ClientConfig.Datas
local npcs = Q76098ClientConfig.Npcs
local points = Q76098ClientConfig.Points

function Q7609815Trigger:OnPostDataPrepare()
    print("Q7609815Trigger - OnPostDataPrepare")
    this = self
end

function Q7609815Trigger:OnPostComponentPrepare()
    print("Q7609815Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76098)
end

function Q7609815Trigger:TriggerIn()
    print("Q7609815Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609815)
    this:DestroySelf()
end

function Q7609815Trigger:PreTriggerIn()
    print("Q7609815Trigger - PreTriggerIn")
end

function Q7609815Trigger:LightUpTriggerIn()
    print("Q7609815Trigger - LightUpTriggerIn")
end

function Q7609815Trigger:TriggerOut()
    print("Q7609815Trigger - TriggerOut")
end

return Q7609815Trigger

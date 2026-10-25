require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620308Trigger = class("Q7620308Trigger", GadgetActorProxy)
Q7620308Trigger.defaultAlias = "Q7620308Trigger"
local Q76203ClientConfig = require("Quest/Client/Q76203ClientConfig")

local this
local subIDs = Q76203ClientConfig.SubIDs
local datas = Q76203ClientConfig.Datas
local npcs = Q76203ClientConfig.Npcs
local points = Q76203ClientConfig.Points

function Q7620308Trigger:OnPostDataPrepare()
    print("Q7620308Trigger - OnPostDataPrepare")
    this = self
end

function Q7620308Trigger:OnPostComponentPrepare()
    print("Q7620308Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76203)
end

function Q7620308Trigger:TriggerIn()
    print("Q7620308Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620308})
    this:DestroySelf()
end

function Q7620308Trigger:PreTriggerIn()
    print("Q7620308Trigger - PreTriggerIn")
end

function Q7620308Trigger:LightUpTriggerIn()
    print("Q7620308Trigger - LightUpTriggerIn")
end

function Q7620308Trigger:TriggerOut()
    print("Q7620308Trigger - TriggerOut")
end

return Q7620308Trigger

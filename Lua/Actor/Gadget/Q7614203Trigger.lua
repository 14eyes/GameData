require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614203Trigger = class("Q7614203Trigger", GadgetActorProxy)
Q7614203Trigger.defaultAlias = "Q7614203Trigger"
local Q76142ClientConfig = require("Quest/Client/Q76142ClientConfig")

local this
local subIDs = Q76142ClientConfig.SubIDs
local datas = Q76142ClientConfig.Datas
local npcs = Q76142ClientConfig.Npcs
local points = Q76142ClientConfig.Points

function Q7614203Trigger:OnPostDataPrepare()
    print("Q7614203Trigger - OnPostDataPrepare")
    this = self
end

function Q7614203Trigger:OnPostComponentPrepare()
    print("Q7614203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76142)
end

function Q7614203Trigger:TriggerIn()
    print("Q7614203Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614203)
    this:DestroySelf()
end

function Q7614203Trigger:PreTriggerIn()
    print("Q7614203Trigger - PreTriggerIn")
end

function Q7614203Trigger:LightUpTriggerIn()
    print("Q7614203Trigger - LightUpTriggerIn")
end

function Q7614203Trigger:TriggerOut()
    print("Q7614203Trigger - TriggerOut")
end

return Q7614203Trigger

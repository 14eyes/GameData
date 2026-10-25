require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614818Trigger = class("Q7614818Trigger", GadgetActorProxy)
Q7614818Trigger.defaultAlias = "Q7614818Trigger"
local Q76148ClientConfig = require("Quest/Client/Q76148ClientConfig")

local this
local subIDs = Q76148ClientConfig.SubIDs
local datas = Q76148ClientConfig.Datas
local npcs = Q76148ClientConfig.Npcs
local points = Q76148ClientConfig.Points

function Q7614818Trigger:OnPostDataPrepare()
    print("Q7614818Trigger - OnPostDataPrepare")
    this = self
end

function Q7614818Trigger:OnPostComponentPrepare()
    print("Q7614818Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76148)
end

function Q7614818Trigger:TriggerIn()
    print("Q7614818Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614818)
    this:DestroySelf()
end

function Q7614818Trigger:PreTriggerIn()
    print("Q7614818Trigger - PreTriggerIn")
end

function Q7614818Trigger:LightUpTriggerIn()
    print("Q7614818Trigger - LightUpTriggerIn")
end

function Q7614818Trigger:TriggerOut()
    print("Q7614818Trigger - TriggerOut")
end

return Q7614818Trigger

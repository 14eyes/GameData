require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614802Trigger = class("Q7614802Trigger", GadgetActorProxy)
Q7614802Trigger.defaultAlias = "Q7614802Trigger"
local Q76148ClientConfig = require("Quest/Client/Q76148ClientConfig")

local this
local subIDs = Q76148ClientConfig.SubIDs
local datas = Q76148ClientConfig.Datas
local npcs = Q76148ClientConfig.Npcs
local points = Q76148ClientConfig.Points

function Q7614802Trigger:OnPostDataPrepare()
    print("Q7614802Trigger - OnPostDataPrepare")
    this = self
end

function Q7614802Trigger:OnPostComponentPrepare()
    print("Q7614802Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76148)
end

function Q7614802Trigger:TriggerIn()
    print("Q7614802Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614802)
    this:DestroySelf()
end

function Q7614802Trigger:PreTriggerIn()
    print("Q7614802Trigger - PreTriggerIn")
end

function Q7614802Trigger:LightUpTriggerIn()
    print("Q7614802Trigger - LightUpTriggerIn")
end

function Q7614802Trigger:TriggerOut()
    print("Q7614802Trigger - TriggerOut")
end

return Q7614802Trigger

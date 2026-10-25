require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614821Trigger = class("Q7614821Trigger", GadgetActorProxy)
Q7614821Trigger.defaultAlias = "Q7614821Trigger"
local Q76148ClientConfig = require("Quest/Client/Q76148ClientConfig")

local this
local subIDs = Q76148ClientConfig.SubIDs
local datas = Q76148ClientConfig.Datas
local npcs = Q76148ClientConfig.Npcs
local points = Q76148ClientConfig.Points

function Q7614821Trigger:OnPostDataPrepare()
    print("Q7614821Trigger - OnPostDataPrepare")
    this = self
end

function Q7614821Trigger:OnPostComponentPrepare()
    print("Q7614821Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76148)
end

function Q7614821Trigger:TriggerIn()
    print("Q7614821Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614821)
    this:DestroySelf()
end

function Q7614821Trigger:PreTriggerIn()
    print("Q7614821Trigger - PreTriggerIn")
end

function Q7614821Trigger:LightUpTriggerIn()
    print("Q7614821Trigger - LightUpTriggerIn")
end

function Q7614821Trigger:TriggerOut()
    print("Q7614821Trigger - TriggerOut")
end

return Q7614821Trigger

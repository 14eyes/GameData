require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614816Trigger = class("Q7614816Trigger", GadgetActorProxy)
Q7614816Trigger.defaultAlias = "Q7614816Trigger"
local Q76148ClientConfig = require("Quest/Client/Q76148ClientConfig")

local this
local subIDs = Q76148ClientConfig.SubIDs
local datas = Q76148ClientConfig.Datas
local npcs = Q76148ClientConfig.Npcs
local points = Q76148ClientConfig.Points

function Q7614816Trigger:OnPostDataPrepare()
    print("Q7614816Trigger - OnPostDataPrepare")
    this = self
end

function Q7614816Trigger:OnPostComponentPrepare()
    print("Q7614816Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76148)
end

function Q7614816Trigger:TriggerIn()
    print("Q7614816Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614816)
    this:DestroySelf()
end

function Q7614816Trigger:PreTriggerIn()
    print("Q7614816Trigger - PreTriggerIn")
end

function Q7614816Trigger:LightUpTriggerIn()
    print("Q7614816Trigger - LightUpTriggerIn")
end

function Q7614816Trigger:TriggerOut()
    print("Q7614816Trigger - TriggerOut")
end

return Q7614816Trigger

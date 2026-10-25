require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610032Trigger = class("Q7610032Trigger", GadgetActorProxy)
Q7610032Trigger.defaultAlias = "Q7610032Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610032Trigger:OnPostDataPrepare()
    print("Q7610032Trigger - OnPostDataPrepare")
    this = self
end

function Q7610032Trigger:OnPostComponentPrepare()
    print("Q7610032Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610032Trigger:TriggerIn()
    print("Q7610032Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610032)
    this:DestroySelf()
end

function Q7610032Trigger:PreTriggerIn()
    print("Q7610032Trigger - PreTriggerIn")
end

function Q7610032Trigger:LightUpTriggerIn()
    print("Q7610032Trigger - LightUpTriggerIn")
end

function Q7610032Trigger:TriggerOut()
    print("Q7610032Trigger - TriggerOut")
end

return Q7610032Trigger

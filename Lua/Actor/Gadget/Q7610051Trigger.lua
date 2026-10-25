require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610051Trigger = class("Q7610051Trigger", GadgetActorProxy)
Q7610051Trigger.defaultAlias = "Q7610051Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610051Trigger:OnPostDataPrepare()
    print("Q7610051Trigger - OnPostDataPrepare")
    this = self
end

function Q7610051Trigger:OnPostComponentPrepare()
    print("Q7610051Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(266, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610051Trigger:TriggerIn()
    print("Q7610051Trigger - TriggerIn")
end

function Q7610051Trigger:PreTriggerIn()
    print("Q7610051Trigger - PreTriggerIn")
end

function Q7610051Trigger:LightUpTriggerIn()
    print("Q7610051Trigger - LightUpTriggerIn")
end

function Q7610051Trigger:TriggerOut()
    print("Q7610051Trigger - TriggerOut")
    actorUtils.FinishQuestID(true, 7610051)
    this:DestroySelf()
end

return Q7610051Trigger

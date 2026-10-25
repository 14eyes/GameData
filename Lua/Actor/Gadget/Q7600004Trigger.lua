require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600004Trigger = class("Q7600004Trigger", GadgetActorProxy)
Q7600004Trigger.defaultAlias = "Q7600004Trigger"
local Q76000ClientConfig = require("Quest/Client/Q76000ClientConfig")

local this
local subIDs = Q76000ClientConfig.SubIDs
local datas = Q76000ClientConfig.Datas
local npcs = Q76000ClientConfig.Npcs
local points = Q76000ClientConfig.Points

function Q7600004Trigger:OnPostDataPrepare()
    print("Q7600004Trigger - OnPostDataPrepare")
    this = self
end

function Q7600004Trigger:OnPostComponentPrepare()
    print("Q7600004Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76000)
end

function Q7600004Trigger:TriggerIn()
    print("Q7600004Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600004)
    this:DestroySelf()
end

function Q7600004Trigger:PreTriggerIn()
    print("Q7600004Trigger - PreTriggerIn")
end

function Q7600004Trigger:LightUpTriggerIn()
    print("Q7600004Trigger - LightUpTriggerIn")
end

function Q7600004Trigger:TriggerOut()
    print("Q7600004Trigger - TriggerOut")
end

return Q7600004Trigger

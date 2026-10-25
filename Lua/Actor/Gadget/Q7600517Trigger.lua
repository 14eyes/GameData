require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600517Trigger = class("Q7600517Trigger", GadgetActorProxy)
Q7600517Trigger.defaultAlias = "Q7600517Trigger"
local Q76005ClientConfig = require("Quest/Client/Q76005ClientConfig")

local this
local subIDs = Q76005ClientConfig.SubIDs
local datas = Q76005ClientConfig.Datas
local npcs = Q76005ClientConfig.Npcs
local points = Q76005ClientConfig.Points

function Q7600517Trigger:OnPostDataPrepare()
    print("Q7600517Trigger - OnPostDataPrepare")
    this = self
end

function Q7600517Trigger:OnPostComponentPrepare()
    print("Q7600517Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76005)
end

function Q7600517Trigger:TriggerIn()
    print("Q7600517Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600517)
    this:DestroySelf()
end

function Q7600517Trigger:PreTriggerIn()
    print("Q7600517Trigger - PreTriggerIn")
end

function Q7600517Trigger:LightUpTriggerIn()
    print("Q7600517Trigger - LightUpTriggerIn")
end

function Q7600517Trigger:TriggerOut()
    print("Q7600517Trigger - TriggerOut")
end

return Q7600517Trigger

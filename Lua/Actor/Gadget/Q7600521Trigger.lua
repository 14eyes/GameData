require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600521Trigger = class("Q7600521Trigger", GadgetActorProxy)
Q7600521Trigger.defaultAlias = "Q7600521Trigger"
local Q76005ClientConfig = require("Quest/Client/Q76005ClientConfig")

local this
local subIDs = Q76005ClientConfig.SubIDs
local datas = Q76005ClientConfig.Datas
local npcs = Q76005ClientConfig.Npcs
local points = Q76005ClientConfig.Points

function Q7600521Trigger:OnPostDataPrepare()
    print("Q7600521Trigger - OnPostDataPrepare")
    this = self
end

function Q7600521Trigger:OnPostComponentPrepare()
    print("Q7600521Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76005)
end

function Q7600521Trigger:TriggerIn()
    print("Q7600521Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600521)
    this:DestroySelf()
end

function Q7600521Trigger:PreTriggerIn()
    print("Q7600521Trigger - PreTriggerIn")
end

function Q7600521Trigger:LightUpTriggerIn()
    print("Q7600521Trigger - LightUpTriggerIn")
end

function Q7600521Trigger:TriggerOut()
    print("Q7600521Trigger - TriggerOut")
end

return Q7600521Trigger

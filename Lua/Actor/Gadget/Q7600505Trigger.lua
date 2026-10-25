require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600505Trigger = class("Q7600505Trigger", GadgetActorProxy)
Q7600505Trigger.defaultAlias = "Q7600505Trigger"
local Q76005ClientConfig = require("Quest/Client/Q76005ClientConfig")

local this
local subIDs = Q76005ClientConfig.SubIDs
local datas = Q76005ClientConfig.Datas
local npcs = Q76005ClientConfig.Npcs
local points = Q76005ClientConfig.Points

function Q7600505Trigger:OnPostDataPrepare()
    print("Q7600505Trigger - OnPostDataPrepare")
    this = self
end

function Q7600505Trigger:OnPostComponentPrepare()
    print("Q7600505Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76005)
end

function Q7600505Trigger:TriggerIn()
    print("Q7600505Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600505)
    this:DestroySelf()
end

function Q7600505Trigger:PreTriggerIn()
    print("Q7600505Trigger - PreTriggerIn")
end

function Q7600505Trigger:LightUpTriggerIn()
    print("Q7600505Trigger - LightUpTriggerIn")
end

function Q7600505Trigger:TriggerOut()
    print("Q7600505Trigger - TriggerOut")
end

return Q7600505Trigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006102Trigger = class("Q7006102Trigger", GadgetActorProxy)
Q7006102Trigger.defaultAlias = "Q7006102Trigger"
local Q70061ClientConfig = require("Quest/Client/Q70061ClientConfig")

local this
local subIDs = Q70061ClientConfig.SubIDs
local datas = Q70061ClientConfig.Datas
local npcs = Q70061ClientConfig.Npcs
local points = Q70061ClientConfig.Points

function Q7006102Trigger:OnPostDataPrepare()
    print("Q7006102Trigger - OnPostDataPrepare")
    this = self
end

function Q7006102Trigger:OnPostComponentPrepare()
    print("Q7006102Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70061)
end

function Q7006102Trigger:TriggerIn()
    print("Q7006102Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006102)
    this:DestroySelf()
end

function Q7006102Trigger:PreTriggerIn()
    print("Q7006102Trigger - PreTriggerIn")
end

function Q7006102Trigger:LightUpTriggerIn()
    print("Q7006102Trigger - LightUpTriggerIn")
end

function Q7006102Trigger:TriggerOut()
    print("Q7006102Trigger - TriggerOut")
end

return Q7006102Trigger

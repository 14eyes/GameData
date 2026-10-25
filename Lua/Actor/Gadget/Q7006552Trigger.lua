require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006552Trigger = class("Q7006552Trigger", GadgetActorProxy)
Q7006552Trigger.defaultAlias = "Q7006552Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006552Trigger:OnPostDataPrepare()
    print("Q7006552Trigger - OnPostDataPrepare")
    this = self
end

function Q7006552Trigger:OnPostComponentPrepare()
    print("Q7006552Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(213.65277, 223.21928, 105.85392, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006552Trigger:TriggerIn()
    print("Q7006552Trigger - TriggerIn")
    actorUtils.FinishQuestID(true, 7006543)
    actorUtils.FinishQuestID(false, 7006552)
    this:DestroySelf()
end

function Q7006552Trigger:PreTriggerIn()
    print("Q7006552Trigger - PreTriggerIn")
end

function Q7006552Trigger:LightUpTriggerIn()
    print("Q7006552Trigger - LightUpTriggerIn")
end

function Q7006552Trigger:TriggerOut()
    print("Q7006552Trigger - TriggerOut")
end

return Q7006552Trigger

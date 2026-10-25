require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006547Trigger = class("Q7006547Trigger", GadgetActorProxy)
Q7006547Trigger.defaultAlias = "Q7006547Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006547Trigger:OnPostDataPrepare()
    print("Q7006547Trigger - OnPostDataPrepare")
    this = self
end

function Q7006547Trigger:OnPostComponentPrepare()
    print("Q7006547Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006547Trigger:TriggerIn()
    print("Q7006547Trigger - TriggerIn")
    actorMgr:GetActor("70065"):TransmitPlayerByQuestId(7006547, 7, nil, nil, nil)
    this:DestroySelf()
end

function Q7006547Trigger:PreTriggerIn()
    print("Q7006547Trigger - PreTriggerIn")
end

function Q7006547Trigger:LightUpTriggerIn()
    print("Q7006547Trigger - LightUpTriggerIn")
end

function Q7006547Trigger:TriggerOut()
    print("Q7006547Trigger - TriggerOut")
end

return Q7006547Trigger

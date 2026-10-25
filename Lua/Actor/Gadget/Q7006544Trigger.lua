require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006544Trigger = class("Q7006544Trigger", GadgetActorProxy)
Q7006544Trigger.defaultAlias = "Q7006544Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006544Trigger:OnPostDataPrepare()
    print("Q7006544Trigger - OnPostDataPrepare")
    this = self
end

function Q7006544Trigger:OnPostComponentPrepare()
    print("Q7006544Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(49.195465, 47.857677, 65.269165, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006544Trigger:TriggerIn()
    print("Q7006544Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006544)
    this:DestroySelf()
end

function Q7006544Trigger:PreTriggerIn()
    print("Q7006544Trigger - PreTriggerIn")
end

function Q7006544Trigger:LightUpTriggerIn()
    print("Q7006544Trigger - LightUpTriggerIn")
end

function Q7006544Trigger:TriggerOut()
    print("Q7006544Trigger - TriggerOut")
end

return Q7006544Trigger

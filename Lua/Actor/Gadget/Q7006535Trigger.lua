require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006535Trigger = class("Q7006535Trigger", GadgetActorProxy)
Q7006535Trigger.defaultAlias = "Q7006535Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006535Trigger:OnPostDataPrepare()
    print("Q7006535Trigger - OnPostDataPrepare")
    this = self
end

function Q7006535Trigger:OnPostComponentPrepare()
    print("Q7006535Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(21.35928, 60.5358, 78.20745, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006535Trigger:TriggerIn()
    print("Q7006535Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006535)
    this:DestroySelf()
end

function Q7006535Trigger:PreTriggerIn()
    print("Q7006535Trigger - PreTriggerIn")
end

function Q7006535Trigger:LightUpTriggerIn()
    print("Q7006535Trigger - LightUpTriggerIn")
end

function Q7006535Trigger:TriggerOut()
    print("Q7006535Trigger - TriggerOut")
end

return Q7006535Trigger

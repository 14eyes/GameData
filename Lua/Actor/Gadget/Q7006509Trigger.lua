require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006509Trigger = class("Q7006509Trigger", GadgetActorProxy)
Q7006509Trigger.defaultAlias = "Q7006509Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006509Trigger:OnPostDataPrepare()
    print("Q7006509Trigger - OnPostDataPrepare")
    this = self
end

function Q7006509Trigger:OnPostComponentPrepare()
    print("Q7006509Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(2.2796745, 5.4626603, 9.07419, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006509Trigger:TriggerIn()
    print("Q7006509Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006509)
    this:DestroySelf()
end

function Q7006509Trigger:PreTriggerIn()
    print("Q7006509Trigger - PreTriggerIn")
end

function Q7006509Trigger:LightUpTriggerIn()
    print("Q7006509Trigger - LightUpTriggerIn")
end

function Q7006509Trigger:TriggerOut()
    print("Q7006509Trigger - TriggerOut")
end

return Q7006509Trigger

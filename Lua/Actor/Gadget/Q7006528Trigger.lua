require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006528Trigger = class("Q7006528Trigger", GadgetActorProxy)
Q7006528Trigger.defaultAlias = "Q7006528Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006528Trigger:OnPostDataPrepare()
    print("Q7006528Trigger - OnPostDataPrepare")
    this = self
end

function Q7006528Trigger:OnPostComponentPrepare()
    print("Q7006528Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20.377298, 28.73613, 28.660118, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006528Trigger:TriggerIn()
    print("Q7006528Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006528)
    this:DestroySelf()
end

function Q7006528Trigger:PreTriggerIn()
    print("Q7006528Trigger - PreTriggerIn")
end

function Q7006528Trigger:LightUpTriggerIn()
    print("Q7006528Trigger - LightUpTriggerIn")
end

function Q7006528Trigger:TriggerOut()
    print("Q7006528Trigger - TriggerOut")
end

return Q7006528Trigger

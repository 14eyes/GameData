require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006536Trigger = class("Q7006536Trigger", GadgetActorProxy)
Q7006536Trigger.defaultAlias = "Q7006536Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006536Trigger:OnPostDataPrepare()
    print("Q7006536Trigger - OnPostDataPrepare")
    this = self
end

function Q7006536Trigger:OnPostComponentPrepare()
    print("Q7006536Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 199.1265, 209.81825, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006536Trigger:TriggerIn()
    print("Q7006536Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006536)
    this:DestroySelf()
end

function Q7006536Trigger:PreTriggerIn()
    print("Q7006536Trigger - PreTriggerIn")
end

function Q7006536Trigger:LightUpTriggerIn()
    print("Q7006536Trigger - LightUpTriggerIn")
end

function Q7006536Trigger:TriggerOut()
    print("Q7006536Trigger - TriggerOut")
end

return Q7006536Trigger

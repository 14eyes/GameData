require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006511Trigger = class("Q7006511Trigger", GadgetActorProxy)
Q7006511Trigger.defaultAlias = "Q7006511Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006511Trigger:OnPostDataPrepare()
    print("Q7006511Trigger - OnPostDataPrepare")
    this = self
end

function Q7006511Trigger:OnPostComponentPrepare()
    print("Q7006511Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 16, 12, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006511Trigger:TriggerIn()
    print("Q7006511Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006511)
    this:DestroySelf()
end

function Q7006511Trigger:PreTriggerIn()
    print("Q7006511Trigger - PreTriggerIn")
end

function Q7006511Trigger:LightUpTriggerIn()
    print("Q7006511Trigger - LightUpTriggerIn")
end

function Q7006511Trigger:TriggerOut()
    print("Q7006511Trigger - TriggerOut")
end

return Q7006511Trigger

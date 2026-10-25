require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006523Trigger = class("Q7006523Trigger", GadgetActorProxy)
Q7006523Trigger.defaultAlias = "Q7006523Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006523Trigger:OnPostDataPrepare()
    print("Q7006523Trigger - OnPostDataPrepare")
    this = self
end

function Q7006523Trigger:OnPostComponentPrepare()
    print("Q7006523Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(9.95109, 9.426885, 14.430951, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006523Trigger:TriggerIn()
    print("Q7006523Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006523)
    this:DestroySelf()
end

function Q7006523Trigger:PreTriggerIn()
    print("Q7006523Trigger - PreTriggerIn")
end

function Q7006523Trigger:LightUpTriggerIn()
    print("Q7006523Trigger - LightUpTriggerIn")
end

function Q7006523Trigger:TriggerOut()
    print("Q7006523Trigger - TriggerOut")
end

return Q7006523Trigger

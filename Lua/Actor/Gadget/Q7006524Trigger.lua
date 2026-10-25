require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006524Trigger = class("Q7006524Trigger", GadgetActorProxy)
Q7006524Trigger.defaultAlias = "Q7006524Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006524Trigger:OnPostDataPrepare()
    print("Q7006524Trigger - OnPostDataPrepare")
    this = self
end

function Q7006524Trigger:OnPostComponentPrepare()
    print("Q7006524Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 15, 46, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006524Trigger:TriggerIn()
    print("Q7006524Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006524)
    this:DestroySelf()
end

function Q7006524Trigger:PreTriggerIn()
    print("Q7006524Trigger - PreTriggerIn")
end

function Q7006524Trigger:LightUpTriggerIn()
    print("Q7006524Trigger - LightUpTriggerIn")
end

function Q7006524Trigger:TriggerOut()
    print("Q7006524Trigger - TriggerOut")
end

return Q7006524Trigger

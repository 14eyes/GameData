require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006543Trigger = class("Q7006543Trigger", GadgetActorProxy)
Q7006543Trigger.defaultAlias = "Q7006543Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006543Trigger:OnPostDataPrepare()
    print("Q7006543Trigger - OnPostDataPrepare")
    this = self
end

function Q7006543Trigger:OnPostComponentPrepare()
    print("Q7006543Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10.176727, 77.70201, 68.90076, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006543Trigger:TriggerIn()
    print("Q7006543Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006543)
    actorUtils.FinishQuestID(true, 7006552)
    this:DestroySelf()
end

function Q7006543Trigger:PreTriggerIn()
    print("Q7006543Trigger - PreTriggerIn")
end

function Q7006543Trigger:LightUpTriggerIn()
    print("Q7006543Trigger - LightUpTriggerIn")
end

function Q7006543Trigger:TriggerOut()
    print("Q7006543Trigger - TriggerOut")
end

return Q7006543Trigger

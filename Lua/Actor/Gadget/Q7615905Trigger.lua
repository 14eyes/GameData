require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615905Trigger = class("Q7615905Trigger", GadgetActorProxy)
Q7615905Trigger.defaultAlias = "Q7615905Trigger"
local Q76159ClientConfig = require("Quest/Client/Q76159ClientConfig")

local this
local subIDs = Q76159ClientConfig.SubIDs
local datas = Q76159ClientConfig.Datas
local npcs = Q76159ClientConfig.Npcs

function Q7615905Trigger:OnPostDataPrepare()
    print("Q7615905Trigger - OnPostDataPrepare")
    this = self
end

function Q7615905Trigger:OnPostComponentPrepare()
    print("Q7615905Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76159)
end

function Q7615905Trigger:TriggerIn()
    print("Q7615905Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615905)
    this:DestroySelf()
end

function Q7615905Trigger:PreTriggerIn()
    print("Q7615905Trigger - PreTriggerIn")
end

function Q7615905Trigger:LightUpTriggerIn()
    print("Q7615905Trigger - LightUpTriggerIn")
end

function Q7615905Trigger:TriggerOut()
    print("Q7615905Trigger - TriggerOut")
end

return Q7615905Trigger

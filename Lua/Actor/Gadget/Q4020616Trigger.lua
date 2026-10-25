require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020616Trigger = class("Q4020616Trigger", GadgetActorProxy)
Q4020616Trigger.defaultAlias = "Q4020616Trigger"
local Q40206ClientConfig = require("Quest/Client/Q40206ClientConfig")

local this
local subIDs = Q40206ClientConfig.SubIDs
local datas = Q40206ClientConfig.Datas
local npcs = Q40206ClientConfig.Npcs
local points = Q40206ClientConfig.Points

function Q4020616Trigger:OnPostDataPrepare()
    print("Q4020616Trigger - OnPostDataPrepare")
    this = self
end

function Q4020616Trigger:OnPostComponentPrepare()
    print("Q4020616Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40206)
end

function Q4020616Trigger:TriggerIn()
    print("Q4020616Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4020616)
    this:DestroySelf()
end

function Q4020616Trigger:PreTriggerIn()
    print("Q4020616Trigger - PreTriggerIn")
end

function Q4020616Trigger:LightUpTriggerIn()
    print("Q4020616Trigger - LightUpTriggerIn")
end

function Q4020616Trigger:TriggerOut()
    print("Q4020616Trigger - TriggerOut")
end

return Q4020616Trigger

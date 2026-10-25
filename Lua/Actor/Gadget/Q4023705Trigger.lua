require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023705Trigger = class("Q4023705Trigger", GadgetActorProxy)
Q4023705Trigger.defaultAlias = "Q4023705Trigger"
local Q40237ClientConfig = require("Quest/Client/Q40237ClientConfig")

local this
local subIDs = Q40237ClientConfig.SubIDs
local datas = Q40237ClientConfig.Datas
local npcs = Q40237ClientConfig.Npcs
local points = Q40237ClientConfig.Points

function Q4023705Trigger:OnPostDataPrepare()
    print("Q4023705Trigger - OnPostDataPrepare")
    this = self
end

function Q4023705Trigger:OnPostComponentPrepare()
    print("Q4023705Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40237)
end

function Q4023705Trigger:TriggerIn()
    print("Q4023705Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4023705)
    this:DestroySelf()
end

function Q4023705Trigger:PreTriggerIn()
    print("Q4023705Trigger - PreTriggerIn")
end

function Q4023705Trigger:LightUpTriggerIn()
    print("Q4023705Trigger - LightUpTriggerIn")
end

function Q4023705Trigger:TriggerOut()
    print("Q4023705Trigger - TriggerOut")
end

return Q4023705Trigger

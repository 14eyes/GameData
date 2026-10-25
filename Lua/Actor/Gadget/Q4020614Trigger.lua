require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020614Trigger = class("Q4020614Trigger", GadgetActorProxy)
Q4020614Trigger.defaultAlias = "Q4020614Trigger"
local Q40206ClientConfig = require("Quest/Client/Q40206ClientConfig")

local this
local subIDs = Q40206ClientConfig.SubIDs
local datas = Q40206ClientConfig.Datas
local npcs = Q40206ClientConfig.Npcs
local points = Q40206ClientConfig.Points

function Q4020614Trigger:OnPostDataPrepare()
    print("Q4020614Trigger - OnPostDataPrepare")
    this = self
end

function Q4020614Trigger:OnPostComponentPrepare()
    print("Q4020614Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40206)
end

function Q4020614Trigger:TriggerIn()
    print("Q4020614Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4020614)
    this:DestroySelf()
end

function Q4020614Trigger:PreTriggerIn()
    print("Q4020614Trigger - PreTriggerIn")
end

function Q4020614Trigger:LightUpTriggerIn()
    print("Q4020614Trigger - LightUpTriggerIn")
end

function Q4020614Trigger:TriggerOut()
    print("Q4020614Trigger - TriggerOut")
end

return Q4020614Trigger

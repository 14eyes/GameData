require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609510Trigger = class("Q7609510Trigger", GadgetActorProxy)
Q7609510Trigger.defaultAlias = "Q7609510Trigger"
local Q76095ClientConfig = require("Quest/Client/Q76095ClientConfig")

local this
local subIDs = Q76095ClientConfig.SubIDs
local datas = Q76095ClientConfig.Datas
local npcs = Q76095ClientConfig.Npcs
local points = Q76095ClientConfig.Points

function Q7609510Trigger:OnPostDataPrepare()
    print("Q7609510Trigger - OnPostDataPrepare")
    this = self
end

function Q7609510Trigger:OnPostComponentPrepare()
    print("Q7609510Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76095)
end

function Q7609510Trigger:TriggerIn()
    print("Q7609510Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609510)
    this:DestroySelf()
end

function Q7609510Trigger:PreTriggerIn()
    print("Q7609510Trigger - PreTriggerIn")
end

function Q7609510Trigger:LightUpTriggerIn()
    print("Q7609510Trigger - LightUpTriggerIn")
end

function Q7609510Trigger:TriggerOut()
    print("Q7609510Trigger - TriggerOut")
end

return Q7609510Trigger

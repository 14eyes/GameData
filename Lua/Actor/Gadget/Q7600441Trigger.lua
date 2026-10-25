require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600441Trigger = class("Q7600441Trigger", GadgetActorProxy)
Q7600441Trigger.defaultAlias = "Q7600441Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600441Trigger:OnPostDataPrepare()
    print("Q7600441Trigger - OnPostDataPrepare")
    this = self
end

function Q7600441Trigger:OnPostComponentPrepare()
    print("Q7600441Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600441Trigger:TriggerIn()
    print("Q7600441Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600441)
    this:DestroySelf()
end

function Q7600441Trigger:PreTriggerIn()
    print("Q7600441Trigger - PreTriggerIn")
end

function Q7600441Trigger:LightUpTriggerIn()
    print("Q7600441Trigger - LightUpTriggerIn")
end

function Q7600441Trigger:TriggerOut()
    print("Q7600441Trigger - TriggerOut")
end

return Q7600441Trigger

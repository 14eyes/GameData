require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600401Trigger = class("Q7600401Trigger", GadgetActorProxy)
Q7600401Trigger.defaultAlias = "Q7600401Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600401Trigger:OnPostDataPrepare()
    print("Q7600401Trigger - OnPostDataPrepare")
    this = self
end

function Q7600401Trigger:OnPostComponentPrepare()
    print("Q7600401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600401Trigger:TriggerIn()
    print("Q7600401Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600401)
    this:DestroySelf()
end

function Q7600401Trigger:PreTriggerIn()
    print("Q7600401Trigger - PreTriggerIn")
end

function Q7600401Trigger:LightUpTriggerIn()
    print("Q7600401Trigger - LightUpTriggerIn")
end

function Q7600401Trigger:TriggerOut()
    print("Q7600401Trigger - TriggerOut")
end

return Q7600401Trigger

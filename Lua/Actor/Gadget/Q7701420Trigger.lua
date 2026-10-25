require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701420Trigger = class("Q7701420Trigger", GadgetActorProxy)
Q7701420Trigger.defaultAlias = "Q7701420Trigger"
local Q77014ClientConfig = require("Quest/Client/Q77014ClientConfig")

local this
local subIDs = Q77014ClientConfig.SubIDs
local datas = Q77014ClientConfig.Datas
local npcs = Q77014ClientConfig.Npcs
local points = Q77014ClientConfig.Points

function Q7701420Trigger:OnPostDataPrepare()
    print("Q7701420Trigger - OnPostDataPrepare")
    this = self
end

function Q7701420Trigger:OnPostComponentPrepare()
    print("Q7701420Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77014)
end

function Q7701420Trigger:TriggerIn()
    print("Q7701420Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7701420)
    this:DestroySelf()
end

function Q7701420Trigger:PreTriggerIn()
    print("Q7701420Trigger - PreTriggerIn")
end

function Q7701420Trigger:LightUpTriggerIn()
    print("Q7701420Trigger - LightUpTriggerIn")
end

function Q7701420Trigger:TriggerOut()
    print("Q7701420Trigger - TriggerOut")
end

return Q7701420Trigger

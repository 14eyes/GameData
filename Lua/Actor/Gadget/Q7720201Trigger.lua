require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7720201Trigger = class("Q7720201Trigger", GadgetActorProxy)
Q7720201Trigger.defaultAlias = "Q7720201Trigger"
local Q77202ClientConfig = require("Quest/Client/Q77202ClientConfig")

local this
local subIDs = Q77202ClientConfig.SubIDs
local datas = Q77202ClientConfig.Datas
local npcs = Q77202ClientConfig.Npcs
local points = Q77202ClientConfig.Points

function Q7720201Trigger:OnPostDataPrepare()
    print("Q7720201Trigger - OnPostDataPrepare")
    this = self
end

function Q7720201Trigger:OnPostComponentPrepare()
    print("Q7720201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77202)
end

function Q7720201Trigger:TriggerIn()
    print("Q7720201Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7720201)
    this:DestroySelf()
end

function Q7720201Trigger:PreTriggerIn()
    print("Q7720201Trigger - PreTriggerIn")
end

function Q7720201Trigger:LightUpTriggerIn()
    print("Q7720201Trigger - LightUpTriggerIn")
end

function Q7720201Trigger:TriggerOut()
    print("Q7720201Trigger - TriggerOut")
end

return Q7720201Trigger

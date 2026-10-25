require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7520910Trigger = class("Q7520910Trigger", GadgetActorProxy)
Q7520910Trigger.defaultAlias = "Q7520910Trigger"
local Q75209ClientConfig = require("Quest/Client/Q75209ClientConfig")

local this
local subIDs = Q75209ClientConfig.SubIDs
local datas = Q75209ClientConfig.Datas
local npcs = Q75209ClientConfig.Npcs
local points = Q75209ClientConfig.Points

function Q7520910Trigger:OnPostDataPrepare()
    print("Q7520910Trigger - OnPostDataPrepare")
    this = self
end

function Q7520910Trigger:OnPostComponentPrepare()
    print("Q7520910Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75209)
end

function Q7520910Trigger:TriggerIn()
    print("Q7520910Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7520910)
    this:DestroySelf()
end

function Q7520910Trigger:PreTriggerIn()
    print("Q7520910Trigger - PreTriggerIn")
end

function Q7520910Trigger:LightUpTriggerIn()
    print("Q7520910Trigger - LightUpTriggerIn")
end

function Q7520910Trigger:TriggerOut()
    print("Q7520910Trigger - TriggerOut")
end

return Q7520910Trigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602702Trigger = class("Q7602702Trigger", GadgetActorProxy)
Q7602702Trigger.defaultAlias = "Q7602702Trigger"
local Q76027ClientConfig = require("Quest/Client/Q76027ClientConfig")

local this
local subIDs = Q76027ClientConfig.SubIDs
local datas = Q76027ClientConfig.Datas
local npcs = Q76027ClientConfig.Npcs
local points = Q76027ClientConfig.Points

function Q7602702Trigger:OnPostDataPrepare()
    print("Q7602702Trigger - OnPostDataPrepare")
    this = self
end

function Q7602702Trigger:OnPostComponentPrepare()
    print("Q7602702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76027)
end

function Q7602702Trigger:TriggerIn()
    print("Q7602702Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602702)
    this:DestroySelf()
end

function Q7602702Trigger:PreTriggerIn()
    print("Q7602702Trigger - PreTriggerIn")
end

function Q7602702Trigger:LightUpTriggerIn()
    print("Q7602702Trigger - LightUpTriggerIn")
end

function Q7602702Trigger:TriggerOut()
    print("Q7602702Trigger - TriggerOut")
end

return Q7602702Trigger

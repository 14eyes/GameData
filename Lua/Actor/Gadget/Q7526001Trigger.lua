require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7526001Trigger = class("Q7526001Trigger", GadgetActorProxy)
Q7526001Trigger.defaultAlias = "Q7526001Trigger"
local Q75260ClientConfig = require("Quest/Client/Q75260ClientConfig")

local this
local subIDs = Q75260ClientConfig.SubIDs
local datas = Q75260ClientConfig.Datas
local npcs = Q75260ClientConfig.Npcs
local points = Q75260ClientConfig.Points

function Q7526001Trigger:OnPostDataPrepare()
    print("Q7526001Trigger - OnPostDataPrepare")
    this = self
end

function Q7526001Trigger:OnPostComponentPrepare()
    print("Q7526001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75260)
end

function Q7526001Trigger:TriggerIn()
    print("Q7526001Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7526001)
    this:DestroySelf()
end

function Q7526001Trigger:PreTriggerIn()
    print("Q7526001Trigger - PreTriggerIn")
end

function Q7526001Trigger:LightUpTriggerIn()
    print("Q7526001Trigger - LightUpTriggerIn")
end

function Q7526001Trigger:TriggerOut()
    print("Q7526001Trigger - TriggerOut")
end

return Q7526001Trigger

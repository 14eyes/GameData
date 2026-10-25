require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7510709_trigger = class("Q7510709_trigger", GadgetActorProxy)
Q7510709_trigger.defaultAlias = "Q7510709_trigger"
local Q75107ClientConfig = require("Quest/Client/Q75107ClientConfig")

local this
local subIDs = Q75107ClientConfig.SubIDs
local datas = Q75107ClientConfig.Datas
local npcs = Q75107ClientConfig.Npcs
local points = Q75107ClientConfig.Points

function Q7510709_trigger:OnPostDataPrepare()
    print("Q7510709_trigger - OnPostDataPrepare")
    this = self
end

function Q7510709_trigger:OnPostComponentPrepare()
    print("Q7510709_trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(17.290787, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75107)
end

function Q7510709_trigger:TriggerIn()
    print("Q7510709_trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7510709)
    this:DestroySelf()
end

function Q7510709_trigger:PreTriggerIn()
    print("Q7510709_trigger - PreTriggerIn")
end

function Q7510709_trigger:LightUpTriggerIn()
    print("Q7510709_trigger - LightUpTriggerIn")
end

function Q7510709_trigger:TriggerOut()
    print("Q7510709_trigger - TriggerOut")
end

return Q7510709_trigger

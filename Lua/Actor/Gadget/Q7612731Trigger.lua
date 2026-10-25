require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612731Trigger = class("Q7612731Trigger", GadgetActorProxy)
Q7612731Trigger.defaultAlias = "Q7612731Trigger"
local Q76127ClientConfig = require("Quest/Client/Q76127ClientConfig")

local this
local subIDs = Q76127ClientConfig.SubIDs
local datas = Q76127ClientConfig.Datas
local npcs = Q76127ClientConfig.Npcs
local points = Q76127ClientConfig.Points

function Q7612731Trigger:OnPostDataPrepare()
    print("Q7612731Trigger - OnPostDataPrepare")
    this = self
end

function Q7612731Trigger:OnPostComponentPrepare()
    print("Q7612731Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76127)
end

function Q7612731Trigger:TriggerIn()
    print("Q7612731Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612731)
    this:DestroySelf()
end

function Q7612731Trigger:PreTriggerIn()
    print("Q7612731Trigger - PreTriggerIn")
end

function Q7612731Trigger:LightUpTriggerIn()
    print("Q7612731Trigger - LightUpTriggerIn")
end

function Q7612731Trigger:TriggerOut()
    print("Q7612731Trigger - TriggerOut")
end

return Q7612731Trigger

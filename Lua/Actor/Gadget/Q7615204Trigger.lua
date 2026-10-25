require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615204Trigger = class("Q7615204Trigger", GadgetActorProxy)
Q7615204Trigger.defaultAlias = "Q7615204Trigger"
local Q76152ClientConfig = require("Quest/Client/Q76152ClientConfig")

local this
local subIDs = Q76152ClientConfig.SubIDs
local datas = Q76152ClientConfig.Datas
local npcs = Q76152ClientConfig.Npcs
local points = Q76152ClientConfig.Points

function Q7615204Trigger:OnPostDataPrepare()
    print("Q7615204Trigger - OnPostDataPrepare")
    this = self
end

function Q7615204Trigger:OnPostComponentPrepare()
    print("Q7615204Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76152)
end

function Q7615204Trigger:TriggerIn()
    print("Q7615204Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615204)
    this:DestroySelf()
end

function Q7615204Trigger:PreTriggerIn()
    print("Q7615204Trigger - PreTriggerIn")
end

function Q7615204Trigger:LightUpTriggerIn()
    print("Q7615204Trigger - LightUpTriggerIn")
end

function Q7615204Trigger:TriggerOut()
    print("Q7615204Trigger - TriggerOut")
end

return Q7615204Trigger

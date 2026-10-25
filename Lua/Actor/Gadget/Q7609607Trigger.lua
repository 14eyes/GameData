require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609607Trigger = class("Q7609607Trigger", GadgetActorProxy)
Q7609607Trigger.defaultAlias = "Q7609607Trigger"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609607Trigger:OnPostDataPrepare()
    print("Q7609607Trigger - OnPostDataPrepare")
    this = self
end

function Q7609607Trigger:OnPostComponentPrepare()
    print("Q7609607Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 10, 25, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609607Trigger:TriggerIn()
    print("Q7609607Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609634)
    this:DestroySelf()
end

function Q7609607Trigger:PreTriggerIn()
    print("Q7609607Trigger - PreTriggerIn")
end

function Q7609607Trigger:LightUpTriggerIn()
    print("Q7609607Trigger - LightUpTriggerIn")
end

function Q7609607Trigger:TriggerOut()
    print("Q7609607Trigger - TriggerOut")
end

return Q7609607Trigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609603Trigger = class("Q7609603Trigger", GadgetActorProxy)
Q7609603Trigger.defaultAlias = "Q7609603Trigger"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609603Trigger:OnPostDataPrepare()
    print("Q7609603Trigger - OnPostDataPrepare")
    this = self
end

function Q7609603Trigger:OnPostComponentPrepare()
    print("Q7609603Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 30, 16, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609603Trigger:TriggerIn()
    print("Q7609603Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609603)
    this:DestroySelf()
end

function Q7609603Trigger:PreTriggerIn()
    print("Q7609603Trigger - PreTriggerIn")
end

function Q7609603Trigger:LightUpTriggerIn()
    print("Q7609603Trigger - LightUpTriggerIn")
end

function Q7609603Trigger:TriggerOut()
    print("Q7609603Trigger - TriggerOut")
end

return Q7609603Trigger

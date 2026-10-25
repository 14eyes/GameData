require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4025123Trigger = class("Q4025123Trigger", GadgetActorProxy)
Q4025123Trigger.defaultAlias = "Q4025123Trigger"
local Q40251ClientConfig = require("Quest/Client/Q40251ClientConfig")

local this
local subIDs = Q40251ClientConfig.SubIDs
local datas = Q40251ClientConfig.Datas
local npcs = Q40251ClientConfig.Npcs
local points = Q40251ClientConfig.Points

function Q4025123Trigger:OnPostDataPrepare()
    print("Q4025123Trigger - OnPostDataPrepare")
    this = self
end

function Q4025123Trigger:OnPostComponentPrepare()
    print("Q4025123Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40251)
end

function Q4025123Trigger:TriggerIn()
    print("Q4025123Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {4025123})
    this:DestroySelf()
end

function Q4025123Trigger:PreTriggerIn()
    print("Q4025123Trigger - PreTriggerIn")
end

function Q4025123Trigger:LightUpTriggerIn()
    print("Q4025123Trigger - LightUpTriggerIn")
end

function Q4025123Trigger:TriggerOut()
    print("Q4025123Trigger - TriggerOut")
end

return Q4025123Trigger

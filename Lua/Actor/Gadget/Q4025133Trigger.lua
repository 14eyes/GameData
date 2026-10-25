require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4025133Trigger = class("Q4025133Trigger", GadgetActorProxy)
Q4025133Trigger.defaultAlias = "Q4025133Trigger"
local Q40251ClientConfig = require("Quest/Client/Q40251ClientConfig")

local this
local subIDs = Q40251ClientConfig.SubIDs
local datas = Q40251ClientConfig.Datas
local npcs = Q40251ClientConfig.Npcs
local points = Q40251ClientConfig.Points

function Q4025133Trigger:OnPostDataPrepare()
    print("Q4025133Trigger - OnPostDataPrepare")
    this = self
end

function Q4025133Trigger:OnPostComponentPrepare()
    print("Q4025133Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40251)
end

function Q4025133Trigger:TriggerIn()
    print("Q4025133Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {4025133})
    this:DestroySelf()
end

function Q4025133Trigger:PreTriggerIn()
    print("Q4025133Trigger - PreTriggerIn")
end

function Q4025133Trigger:LightUpTriggerIn()
    print("Q4025133Trigger - LightUpTriggerIn")
end

function Q4025133Trigger:TriggerOut()
    print("Q4025133Trigger - TriggerOut")
end

return Q4025133Trigger

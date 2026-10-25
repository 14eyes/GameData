require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110704Trigger = class("Q7110704Trigger", GadgetActorProxy)
Q7110704Trigger.defaultAlias = "Q7110704Trigger"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110704Trigger:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110704Trigger] OnPostDataPrepare")
    this = self
end

function Q7110704Trigger:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110704Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110704Trigger:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110704Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110704)
    this:DestroySelf()
end

function Q7110704Trigger:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110704Trigger] PreTriggerIn")
end

function Q7110704Trigger:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110704Trigger] LightUpTriggerIn")
end

function Q7110704Trigger:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110704Trigger] TriggerOut")
end

return Q7110704Trigger

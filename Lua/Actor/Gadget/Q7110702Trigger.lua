require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110702Trigger = class("Q7110702Trigger", GadgetActorProxy)
Q7110702Trigger.defaultAlias = "Q7110702Trigger"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110702Trigger:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110702Trigger] OnPostDataPrepare")
    this = self
end

function Q7110702Trigger:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110702Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110702Trigger:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110702Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110702)
    this:DestroySelf()
end

function Q7110702Trigger:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110702Trigger] PreTriggerIn")
end

function Q7110702Trigger:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110702Trigger] LightUpTriggerIn")
end

function Q7110702Trigger:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110702Trigger] TriggerOut")
end

return Q7110702Trigger

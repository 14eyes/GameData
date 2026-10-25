require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1303704Trigger = class("Q1303704Trigger", GadgetActorProxy)
Q1303704Trigger.defaultAlias = "Q1303704Trigger"
local Q13037ClientConfig = require("Quest/Client/Q13037ClientConfig")

local this
local subIDs = Q13037ClientConfig.SubIDs
local npcs = Q13037ClientConfig.Npcs
local points = Q13037ClientConfig.Points
local datas = Q13037ClientConfig.Datas

function Q1303704Trigger:OnPostDataPrepare()
    print("[MainId: 13037][Trigger: Q1303704Trigger] OnPostDataPrepare")
    this = self
end

function Q1303704Trigger:OnPostComponentPrepare()
    print("[MainId: 13037][Trigger: Q1303704Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 13037)
end

function Q1303704Trigger:TriggerIn()
    print("[MainId: 13037][Trigger: Q1303704Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1303704)
    this:DestroySelf()
end

function Q1303704Trigger:PreTriggerIn()
    print("[MainId: 13037][Trigger: Q1303704Trigger] PreTriggerIn")
end

function Q1303704Trigger:LightUpTriggerIn()
    print("[MainId: 13037][Trigger: Q1303704Trigger] LightUpTriggerIn")
end

function Q1303704Trigger:TriggerOut()
    print("[MainId: 13037][Trigger: Q1303704Trigger] TriggerOut")
end

return Q1303704Trigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74216Trigger = class("Q74216Trigger", GadgetActorProxy)
Q74216Trigger.defaultAlias = "Q74216Trigger"
local Q74216ClientConfig = require("Quest/Client/Q74216ClientConfig")

local this
local subIDs = Q74216ClientConfig.SubIDs
local npcs = Q74216ClientConfig.Npcs
local points = Q74216ClientConfig.Points
local datas = Q74216ClientConfig.Datas

function Q74216Trigger:OnPostDataPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger] OnPostDataPrepare")
    this = self
end

function Q74216Trigger:OnPostComponentPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q74216Trigger:TriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7421606)
    this:DestroySelf()
end

function Q74216Trigger:PreTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger] PreTriggerIn")
end

function Q74216Trigger:LightUpTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger] LightUpTriggerIn")
end

function Q74216Trigger:TriggerOut()
    print("[MainId: 74216][Trigger: Q74216Trigger] TriggerOut")
end

return Q74216Trigger

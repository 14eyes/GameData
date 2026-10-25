require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400426Trigger = class("Q7400426Trigger", GadgetActorProxy)
Q7400426Trigger.defaultAlias = "Q7400426Trigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400426Trigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400426Trigger] OnPostDataPrepare")
    this = self
end

function Q7400426Trigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400426Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400426Trigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400426Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400426)
    this:DestroySelf()
end

function Q7400426Trigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400426Trigger] PreTriggerIn")
end

function Q7400426Trigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400426Trigger] LightUpTriggerIn")
end

function Q7400426Trigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400426Trigger] TriggerOut")
end

return Q7400426Trigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400403Trigger = class("Q7400403Trigger", GadgetActorProxy)
Q7400403Trigger.defaultAlias = "Q7400403Trigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400403Trigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400403Trigger] OnPostDataPrepare")
    this = self
end

function Q7400403Trigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400403Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400403Trigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400403Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400403)
    this:DestroySelf()
end

function Q7400403Trigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400403Trigger] PreTriggerIn")
end

function Q7400403Trigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400403Trigger] LightUpTriggerIn")
end

function Q7400403Trigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400403Trigger] TriggerOut")
end

return Q7400403Trigger

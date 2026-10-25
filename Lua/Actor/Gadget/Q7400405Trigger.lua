require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400405Trigger = class("Q7400405Trigger", GadgetActorProxy)
Q7400405Trigger.defaultAlias = "Q7400405Trigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400405Trigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400405Trigger] OnPostDataPrepare")
    this = self
end

function Q7400405Trigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400405Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400405Trigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400405Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400405)
    this:DestroySelf()
end

function Q7400405Trigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400405Trigger] PreTriggerIn")
end

function Q7400405Trigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400405Trigger] LightUpTriggerIn")
end

function Q7400405Trigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400405Trigger] TriggerOut")
end

return Q7400405Trigger

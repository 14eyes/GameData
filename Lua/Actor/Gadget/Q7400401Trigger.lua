require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400401Trigger = class("Q7400401Trigger", GadgetActorProxy)
Q7400401Trigger.defaultAlias = "Q7400401Trigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400401Trigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400401Trigger] OnPostDataPrepare")
    this = self
end

function Q7400401Trigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400401Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400401Trigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400401Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400401)
    this:DestroySelf()
end

function Q7400401Trigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400401Trigger] PreTriggerIn")
end

function Q7400401Trigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400401Trigger] LightUpTriggerIn")
end

function Q7400401Trigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400401Trigger] TriggerOut")
end

return Q7400401Trigger

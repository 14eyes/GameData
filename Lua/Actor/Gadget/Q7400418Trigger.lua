require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400418Trigger = class("Q7400418Trigger", GadgetActorProxy)
Q7400418Trigger.defaultAlias = "Q7400418Trigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400418Trigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400418Trigger] OnPostDataPrepare")
    this = self
end

function Q7400418Trigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400418Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400418Trigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400418Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400418)
    this:DestroySelf()
end

function Q7400418Trigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400418Trigger] PreTriggerIn")
end

function Q7400418Trigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400418Trigger] LightUpTriggerIn")
end

function Q7400418Trigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400418Trigger] TriggerOut")
end

return Q7400418Trigger

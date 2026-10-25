require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7420202Trigger = class("Q7420202Trigger", GadgetActorProxy)
Q7420202Trigger.defaultAlias = "Q7420202Trigger"
local Q74202ClientConfig = require("Quest/Client/Q74202ClientConfig")

local this
local subIDs = Q74202ClientConfig.SubIDs
local npcs = Q74202ClientConfig.Npcs
local points = Q74202ClientConfig.Points
local datas = Q74202ClientConfig.Datas

function Q7420202Trigger:OnPostDataPrepare()
    print("[MainId: 74202][Trigger: Q7420202Trigger] OnPostDataPrepare")
    this = self
end

function Q7420202Trigger:OnPostComponentPrepare()
    print("[MainId: 74202][Trigger: Q7420202Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7420202Trigger:TriggerIn()
    print("[MainId: 74202][Trigger: Q7420202Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7420204)
    this:DestroySelf()
end

function Q7420202Trigger:PreTriggerIn()
    print("[MainId: 74202][Trigger: Q7420202Trigger] PreTriggerIn")
end

function Q7420202Trigger:LightUpTriggerIn()
    print("[MainId: 74202][Trigger: Q7420202Trigger] LightUpTriggerIn")
end

function Q7420202Trigger:TriggerOut()
    print("[MainId: 74202][Trigger: Q7420202Trigger] TriggerOut")
end

return Q7420202Trigger

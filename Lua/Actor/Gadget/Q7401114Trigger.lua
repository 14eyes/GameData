require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401114Trigger = class("Q7401114Trigger", GadgetActorProxy)
Q7401114Trigger.defaultAlias = "Q7401114Trigger"
local Q74011ClientConfig = require("Quest/Client/Q74011ClientConfig")

local this
local subIDs = Q74011ClientConfig.SubIDs
local npcs = Q74011ClientConfig.Npcs
local points = Q74011ClientConfig.Points
local datas = Q74011ClientConfig.Datas

function Q7401114Trigger:OnPostDataPrepare()
    print("[MainId: 74011][Trigger: Q7401114Trigger] OnPostDataPrepare")
    this = self
end

function Q7401114Trigger:OnPostComponentPrepare()
    print("[MainId: 74011][Trigger: Q7401114Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401114Trigger:TriggerIn()
    print("[MainId: 74011][Trigger: Q7401114Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7401114)
    this:DestroySelf()
end

function Q7401114Trigger:PreTriggerIn()
    print("[MainId: 74011][Trigger: Q7401114Trigger] PreTriggerIn")
end

function Q7401114Trigger:LightUpTriggerIn()
    print("[MainId: 74011][Trigger: Q7401114Trigger] LightUpTriggerIn")
end

function Q7401114Trigger:TriggerOut()
    print("[MainId: 74011][Trigger: Q7401114Trigger] TriggerOut")
end

return Q7401114Trigger

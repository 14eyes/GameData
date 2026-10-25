require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7419401Trigger = class("Q7419401Trigger", GadgetActorProxy)
Q7419401Trigger.defaultAlias = "Q7419401Trigger"
local Q74194ClientConfig = require("Quest/Client/Q74194ClientConfig")

local this
local subIDs = Q74194ClientConfig.SubIDs
local npcs = Q74194ClientConfig.Npcs
local points = Q74194ClientConfig.Points
local datas = Q74194ClientConfig.Datas

function Q7419401Trigger:OnPostDataPrepare()
    print("[MainId: 74194][Trigger: Q7419401Trigger] OnPostDataPrepare")
    this = self
end

function Q7419401Trigger:OnPostComponentPrepare()
    print("[MainId: 74194][Trigger: Q7419401Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7419401Trigger:TriggerIn()
    print("[MainId: 74194][Trigger: Q7419401Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7419401)
    this:DestroySelf()
end

function Q7419401Trigger:PreTriggerIn()
    print("[MainId: 74194][Trigger: Q7419401Trigger] PreTriggerIn")
end

function Q7419401Trigger:LightUpTriggerIn()
    print("[MainId: 74194][Trigger: Q7419401Trigger] LightUpTriggerIn")
end

function Q7419401Trigger:TriggerOut()
    print("[MainId: 74194][Trigger: Q7419401Trigger] TriggerOut")
end

return Q7419401Trigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7419403Trigger = class("Q7419403Trigger", GadgetActorProxy)
Q7419403Trigger.defaultAlias = "Q7419403Trigger"
local Q74194ClientConfig = require("Quest/Client/Q74194ClientConfig")

local this
local subIDs = Q74194ClientConfig.SubIDs
local npcs = Q74194ClientConfig.Npcs
local points = Q74194ClientConfig.Points
local datas = Q74194ClientConfig.Datas

function Q7419403Trigger:OnPostDataPrepare()
    print("[MainId: 74194][Trigger: Q7419403Trigger] OnPostDataPrepare")
    this = self
end

function Q7419403Trigger:OnPostComponentPrepare()
    print("[MainId: 74194][Trigger: Q7419403Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7419403Trigger:TriggerIn()
    print("[MainId: 74194][Trigger: Q7419403Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7419403)
    this:DestroySelf()
end

function Q7419403Trigger:PreTriggerIn()
    print("[MainId: 74194][Trigger: Q7419403Trigger] PreTriggerIn")
end

function Q7419403Trigger:LightUpTriggerIn()
    print("[MainId: 74194][Trigger: Q7419403Trigger] LightUpTriggerIn")
end

function Q7419403Trigger:TriggerOut()
    print("[MainId: 74194][Trigger: Q7419403Trigger] TriggerOut")
end

return Q7419403Trigger

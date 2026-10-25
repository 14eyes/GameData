require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75071Trigger = class("Q75071Trigger", GadgetActorProxy)
Q75071Trigger.defaultAlias = "Q75071Trigger"
local Q75071ClientConfig = require("Quest/Client/Q75071ClientConfig")

local this
local subIDs = Q75071ClientConfig.SubIDs
local npcs = Q75071ClientConfig.Npcs
local datas = Q75071ClientConfig.Datas

function Q75071Trigger:OnPostDataPrepare()
    print("[MainId: 75071][Trigger: Q75071Trigger] OnPostDataPrepare")
    this = self
end

function Q75071Trigger:OnPostComponentPrepare()
    print("[MainId: 75071][Trigger: Q75071Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75071)
end

function Q75071Trigger:TriggerIn()
    print("[MainId: 75071][Trigger: Q75071Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7507115)
    this:DestroySelf()
end

function Q75071Trigger:PreTriggerIn()
    print("[MainId: 75071][Trigger: Q75071Trigger] PreTriggerIn")
end

function Q75071Trigger:LightUpTriggerIn()
    print("[MainId: 75071][Trigger: Q75071Trigger] LightUpTriggerIn")
end

function Q75071Trigger:TriggerOut()
    print("[MainId: 75071][Trigger: Q75071Trigger] TriggerOut")
end

return Q75071Trigger

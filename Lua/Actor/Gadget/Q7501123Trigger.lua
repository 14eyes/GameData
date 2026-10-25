require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501123Trigger = class("Q7501123Trigger", GadgetActorProxy)
Q7501123Trigger.defaultAlias = "Q7501123Trigger"
local Q75011ClientConfig = require("Quest/Client/Q75011ClientConfig")

local this
local subIDs = Q75011ClientConfig.SubIDs
local npcs = Q75011ClientConfig.Npcs
local datas = Q75011ClientConfig.Datas

function Q7501123Trigger:OnPostDataPrepare()
    print("[MainId: 75011][Trigger: Q7501123Trigger] OnPostDataPrepare")
    this = self
end

function Q7501123Trigger:OnPostComponentPrepare()
    print("[MainId: 75011][Trigger: Q7501123Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75011)
end

function Q7501123Trigger:TriggerIn()
    print("[MainId: 75011][Trigger: Q7501123Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501123)
    this:DestroySelf()
end

function Q7501123Trigger:PreTriggerIn()
    print("[MainId: 75011][Trigger: Q7501123Trigger] PreTriggerIn")
end

function Q7501123Trigger:LightUpTriggerIn()
    print("[MainId: 75011][Trigger: Q7501123Trigger] LightUpTriggerIn")
end

function Q7501123Trigger:TriggerOut()
    print("[MainId: 75011][Trigger: Q7501123Trigger] TriggerOut")
end

return Q7501123Trigger

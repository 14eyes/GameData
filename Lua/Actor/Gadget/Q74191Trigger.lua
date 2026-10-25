require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74191Trigger = class("Q74191Trigger", GadgetActorProxy)
Q74191Trigger.defaultAlias = "Q74191Trigger"
local Q74191ClientConfig = require("Quest/Client/Q74191ClientConfig")

local this
local subIDs = Q74191ClientConfig.SubIDs
local npcs = Q74191ClientConfig.Npcs
local datas = Q74191ClientConfig.Datas

function Q74191Trigger:OnPostDataPrepare()
    print("[MainId: 74191][Trigger: Q74191Trigger] OnPostDataPrepare")
    this = self
end

function Q74191Trigger:OnPostComponentPrepare()
    print("[MainId: 74191][Trigger: Q74191Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(214.0991, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74191Trigger:TriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7419101)
    this:DestroySelf()
end

function Q74191Trigger:PreTriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger] PreTriggerIn")
end

function Q74191Trigger:LightUpTriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger] LightUpTriggerIn")
end

function Q74191Trigger:TriggerOut()
    print("[MainId: 74191][Trigger: Q74191Trigger] TriggerOut")
end

return Q74191Trigger

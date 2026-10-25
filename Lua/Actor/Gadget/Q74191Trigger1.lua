require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74191Trigger1 = class("Q74191Trigger1", GadgetActorProxy)
Q74191Trigger1.defaultAlias = "Q74191Trigger1"
local Q74191ClientConfig = require("Quest/Client/Q74191ClientConfig")

local this
local subIDs = Q74191ClientConfig.SubIDs
local npcs = Q74191ClientConfig.Npcs
local datas = Q74191ClientConfig.Datas

function Q74191Trigger1:OnPostDataPrepare()
    print("[MainId: 74191][Trigger: Q74191Trigger1] OnPostDataPrepare")
    this = self
end

function Q74191Trigger1:OnPostComponentPrepare()
    print("[MainId: 74191][Trigger: Q74191Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(42.49476, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74191Trigger1:TriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7419103)
    this:DestroySelf()
end

function Q74191Trigger1:PreTriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger1] PreTriggerIn")
end

function Q74191Trigger1:LightUpTriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger1] LightUpTriggerIn")
end

function Q74191Trigger1:TriggerOut()
    print("[MainId: 74191][Trigger: Q74191Trigger1] TriggerOut")
end

return Q74191Trigger1

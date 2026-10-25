require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74196Trigger2 = class("Q74196Trigger2", GadgetActorProxy)
Q74196Trigger2.defaultAlias = "Q74196Trigger2"
local Q74196ClientConfig = require("Quest/Client/Q74196ClientConfig")

local this
local subIDs = Q74196ClientConfig.SubIDs
local npcs = Q74196ClientConfig.Npcs
local datas = Q74196ClientConfig.Datas

function Q74196Trigger2:OnPostDataPrepare()
    print("[MainId: 74196][Trigger: Q74196Trigger2] OnPostDataPrepare")
    this = self
end

function Q74196Trigger2:OnPostComponentPrepare()
    print("[MainId: 74196][Trigger: Q74196Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74196Trigger2:TriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 7419619)
    this:DestroySelf()
end

function Q74196Trigger2:PreTriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger2] PreTriggerIn")
end

function Q74196Trigger2:LightUpTriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger2] LightUpTriggerIn")
end

function Q74196Trigger2:TriggerOut()
    print("[MainId: 74196][Trigger: Q74196Trigger2] TriggerOut")
end

return Q74196Trigger2

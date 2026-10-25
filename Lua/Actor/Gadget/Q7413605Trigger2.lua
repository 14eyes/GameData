require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413605Trigger2 = class("Q7413605Trigger2", GadgetActorProxy)
Q7413605Trigger2.defaultAlias = "Q7413605Trigger2"
local Q74136ClientConfig = require("Quest/Client/Q74136ClientConfig")

local this
local subIDs = Q74136ClientConfig.SubIDs
local npcs = Q74136ClientConfig.Npcs
local datas = Q74136ClientConfig.Datas

function Q7413605Trigger2:OnPostDataPrepare()
    print("[MainId: 74136][Trigger: Q7413605Trigger2] OnPostDataPrepare")
    this = self
end

function Q7413605Trigger2:OnPostComponentPrepare()
    print("[MainId: 74136][Trigger: Q7413605Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413605Trigger2:TriggerIn()
    print("[MainId: 74136][Trigger: Q7413605Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 7413605)
    this:DestroySelf()
end

function Q7413605Trigger2:PreTriggerIn()
    print("[MainId: 74136][Trigger: Q7413605Trigger2] PreTriggerIn")
end

function Q7413605Trigger2:LightUpTriggerIn()
    print("[MainId: 74136][Trigger: Q7413605Trigger2] LightUpTriggerIn")
end

function Q7413605Trigger2:TriggerOut()
    print("[MainId: 74136][Trigger: Q7413605Trigger2] TriggerOut")
end

return Q7413605Trigger2

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413603Trigger1 = class("Q7413603Trigger1", GadgetActorProxy)
Q7413603Trigger1.defaultAlias = "Q7413603Trigger1"
local Q74136ClientConfig = require("Quest/Client/Q74136ClientConfig")

local this
local subIDs = Q74136ClientConfig.SubIDs
local npcs = Q74136ClientConfig.Npcs
local datas = Q74136ClientConfig.Datas

function Q7413603Trigger1:OnPostDataPrepare()
    print("[MainId: 74136][Trigger: Q7413603Trigger1] OnPostDataPrepare")
    this = self
end

function Q7413603Trigger1:OnPostComponentPrepare()
    print("[MainId: 74136][Trigger: Q7413603Trigger1] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(7.613925, 11, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413603Trigger1:TriggerIn()
    print("[MainId: 74136][Trigger: Q7413603Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7413603)
    this:DestroySelf()
end

function Q7413603Trigger1:PreTriggerIn()
    print("[MainId: 74136][Trigger: Q7413603Trigger1] PreTriggerIn")
end

function Q7413603Trigger1:LightUpTriggerIn()
    print("[MainId: 74136][Trigger: Q7413603Trigger1] LightUpTriggerIn")
end

function Q7413603Trigger1:TriggerOut()
    print("[MainId: 74136][Trigger: Q7413603Trigger1] TriggerOut")
end

return Q7413603Trigger1

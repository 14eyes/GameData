require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74076Trigger_7407604 = class("Q74076Trigger_7407604", GadgetActorProxy)
Q74076Trigger_7407604.defaultAlias = "Q74076Trigger_7407604"
local Q74076ClientConfig = require("Quest/Client/Q74076ClientConfig")

local this
local subIDs = Q74076ClientConfig.SubIDs
local npcs = Q74076ClientConfig.Npcs
local datas = Q74076ClientConfig.Datas

function Q74076Trigger_7407604:OnPostDataPrepare()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407604] OnPostDataPrepare")
    this = self
end

function Q74076Trigger_7407604:OnPostComponentPrepare()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407604] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74076Trigger_7407604:TriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407604] TriggerIn")
    actorUtils.FinishQuestID(false, 7407604)
    this:DestroySelf()
end

function Q74076Trigger_7407604:PreTriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407604] PreTriggerIn")
end

function Q74076Trigger_7407604:LightUpTriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407604] LightUpTriggerIn")
end

function Q74076Trigger_7407604:TriggerOut()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407604] TriggerOut")
end

return Q74076Trigger_7407604

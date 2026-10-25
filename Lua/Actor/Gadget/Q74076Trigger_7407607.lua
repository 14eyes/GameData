require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74076Trigger_7407607 = class("Q74076Trigger_7407607", GadgetActorProxy)
Q74076Trigger_7407607.defaultAlias = "Q74076Trigger_7407607"
local Q74076ClientConfig = require("Quest/Client/Q74076ClientConfig")

local this
local subIDs = Q74076ClientConfig.SubIDs
local npcs = Q74076ClientConfig.Npcs
local datas = Q74076ClientConfig.Datas

function Q74076Trigger_7407607:OnPostDataPrepare()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407607] OnPostDataPrepare")
    this = self
end

function Q74076Trigger_7407607:OnPostComponentPrepare()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407607] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 12, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74076Trigger_7407607:TriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407607] TriggerIn")
    actorUtils.FinishQuestID(false, 7407607)
    this:DestroySelf()
end

function Q74076Trigger_7407607:PreTriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407607] PreTriggerIn")
end

function Q74076Trigger_7407607:LightUpTriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407607] LightUpTriggerIn")
end

function Q74076Trigger_7407607:TriggerOut()
    print("[MainId: 74076][Trigger: Q74076Trigger_7407607] TriggerOut")
end

return Q74076Trigger_7407607

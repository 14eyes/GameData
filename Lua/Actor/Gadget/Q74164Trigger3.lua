require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74164Trigger3 = class("Q74164Trigger3", GadgetActorProxy)
Q74164Trigger3.defaultAlias = "Q74164Trigger3"
local Q74164ClientConfig = require("Quest/Client/Q74164ClientConfig")

local this
local subIDs = Q74164ClientConfig.SubIDs
local npcs = Q74164ClientConfig.Npcs
local datas = Q74164ClientConfig.Datas

function Q74164Trigger3:OnPostDataPrepare()
    print("[MainId: 74164][Trigger: Q74164Trigger3] OnPostDataPrepare")
    this = self
end

function Q74164Trigger3:OnPostComponentPrepare()
    print("[MainId: 74164][Trigger: Q74164Trigger3] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(9.884808, 8.032398, 24.42166, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74164Trigger3:TriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger3] TriggerIn")
    actorUtils.FinishQuestID(false, 7416409)
    this:DestroySelf()
end

function Q74164Trigger3:PreTriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger3] PreTriggerIn")
end

function Q74164Trigger3:LightUpTriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger3] LightUpTriggerIn")
end

function Q74164Trigger3:TriggerOut()
    print("[MainId: 74164][Trigger: Q74164Trigger3] TriggerOut")
end

return Q74164Trigger3

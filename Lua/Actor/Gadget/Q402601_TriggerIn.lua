require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402601_TriggerIn = class("Q402601_TriggerIn", GadgetActorProxy)
Q402601_TriggerIn.defaultAlias = "Q402601_TriggerIn"
local Q4026ClientConfig = require("Quest/Client/Q4026ClientConfig")

local this
local subIDs = Q4026ClientConfig.SubIDs
local npcs = Q4026ClientConfig.Npcs
local points = Q4026ClientConfig.Points
local datas = Q4026ClientConfig.Datas

function Q402601_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4026][Trigger: Q402601_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q402601_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4026][Trigger: Q402601_TriggerIn] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(250, 300, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402601_TriggerIn:TriggerIn()
    print("[MainId: 4026][Trigger: Q402601_TriggerIn] TriggerIn")
    actorUtils.FinishQuestID(true, 402601)
    this:DestroySelf()
end

function Q402601_TriggerIn:PreTriggerIn()
    print("[MainId: 4026][Trigger: Q402601_TriggerIn] PreTriggerIn")
end

function Q402601_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4026][Trigger: Q402601_TriggerIn] LightUpTriggerIn")
end

function Q402601_TriggerIn:TriggerOut()
    print("[MainId: 4026][Trigger: Q402601_TriggerIn] TriggerOut")
end

return Q402601_TriggerIn

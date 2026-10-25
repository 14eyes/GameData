require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402603_TriggerIn = class("Q402603_TriggerIn", GadgetActorProxy)
Q402603_TriggerIn.defaultAlias = "Q402603_TriggerIn"
local Q4026ClientConfig = require("Quest/Client/Q4026ClientConfig")

local this
local subIDs = Q4026ClientConfig.SubIDs
local npcs = Q4026ClientConfig.Npcs
local points = Q4026ClientConfig.Points
local datas = Q4026ClientConfig.Datas

function Q402603_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q402603_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402603_TriggerIn:TriggerIn()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn] TriggerIn")
    actorUtils.FinishQuestID(false, 402603)
    this:DestroySelf()
end

function Q402603_TriggerIn:PreTriggerIn()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn] PreTriggerIn")
end

function Q402603_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn] LightUpTriggerIn")
end

function Q402603_TriggerIn:TriggerOut()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn] TriggerOut")
end

return Q402603_TriggerIn

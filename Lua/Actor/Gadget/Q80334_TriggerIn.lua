require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q80334_TriggerIn = class("Q80334_TriggerIn", GadgetActorProxy)
Q80334_TriggerIn.defaultAlias = "Q80334_TriggerIn"
local Q803ClientConfig = require("Quest/Client/Q803ClientConfig")

local this
local subIDs = Q803ClientConfig.SubIDs
local npcs = Q803ClientConfig.Npcs
local datas = Q803ClientConfig.Datas

function Q80334_TriggerIn:OnPostDataPrepare()
    print("[MainId: 803][Trigger: Q80334_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q80334_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 803][Trigger: Q80334_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q80334_TriggerIn:TriggerIn()
    print("[MainId: 803][Trigger: Q80334_TriggerIn] TriggerIn")
    actorUtils.HandleQuestLoadingCtxOpForLua("test", 1)
end

function Q80334_TriggerIn:PreTriggerIn()
    print("[MainId: 803][Trigger: Q80334_TriggerIn] PreTriggerIn")
end

function Q80334_TriggerIn:LightUpTriggerIn()
    print("[MainId: 803][Trigger: Q80334_TriggerIn] LightUpTriggerIn")
end

function Q80334_TriggerIn:TriggerOut()
    print("[MainId: 803][Trigger: Q80334_TriggerIn] TriggerOut")
end

return Q80334_TriggerIn

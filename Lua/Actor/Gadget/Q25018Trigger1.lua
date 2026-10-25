require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q25018Trigger1 = class("Q25018Trigger1", GadgetActorProxy)
Q25018Trigger1.defaultAlias = "Q25018Trigger1"
local Q25018ClientConfig = require("Quest/Client/Q25018ClientConfig")

local this
local subIDs = Q25018ClientConfig.SubIDs
local npcs = Q25018ClientConfig.Npcs
local points = Q25018ClientConfig.Points
local datas = Q25018ClientConfig.Datas

function Q25018Trigger1:OnPostDataPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger1] OnPostDataPrepare")
    this = self
end

function Q25018Trigger1:OnPostComponentPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25018)
end

function Q25018Trigger1:TriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 2501807)
    this:DestroySelf()
end

function Q25018Trigger1:PreTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger1] PreTriggerIn")
end

function Q25018Trigger1:LightUpTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger1] LightUpTriggerIn")
end

function Q25018Trigger1:TriggerOut()
    print("[MainId: 25018][Trigger: Q25018Trigger1] TriggerOut")
end

return Q25018Trigger1

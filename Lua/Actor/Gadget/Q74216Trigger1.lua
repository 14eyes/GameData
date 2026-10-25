require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74216Trigger1 = class("Q74216Trigger1", GadgetActorProxy)
Q74216Trigger1.defaultAlias = "Q74216Trigger1"
local Q74216ClientConfig = require("Quest/Client/Q74216ClientConfig")

local this
local subIDs = Q74216ClientConfig.SubIDs
local npcs = Q74216ClientConfig.Npcs
local points = Q74216ClientConfig.Points
local datas = Q74216ClientConfig.Datas

function Q74216Trigger1:OnPostDataPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger1] OnPostDataPrepare")
    this = self
end

function Q74216Trigger1:OnPostComponentPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(38.89189, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q74216Trigger1:TriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7421613)
    this:DestroySelf()
end

function Q74216Trigger1:PreTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger1] PreTriggerIn")
end

function Q74216Trigger1:LightUpTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger1] LightUpTriggerIn")
end

function Q74216Trigger1:TriggerOut()
    print("[MainId: 74216][Trigger: Q74216Trigger1] TriggerOut")
end

return Q74216Trigger1

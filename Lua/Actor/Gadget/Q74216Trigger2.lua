require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74216Trigger2 = class("Q74216Trigger2", GadgetActorProxy)
Q74216Trigger2.defaultAlias = "Q74216Trigger2"
local Q74216ClientConfig = require("Quest/Client/Q74216ClientConfig")

local this
local subIDs = Q74216ClientConfig.SubIDs
local npcs = Q74216ClientConfig.Npcs
local points = Q74216ClientConfig.Points
local datas = Q74216ClientConfig.Datas

function Q74216Trigger2:OnPostDataPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger2] OnPostDataPrepare")
    this = self
end

function Q74216Trigger2:OnPostComponentPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(30.56286, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q74216Trigger2:TriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 7421603)
    this:DestroySelf()
end

function Q74216Trigger2:PreTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger2] PreTriggerIn")
end

function Q74216Trigger2:LightUpTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger2] LightUpTriggerIn")
end

function Q74216Trigger2:TriggerOut()
    print("[MainId: 74216][Trigger: Q74216Trigger2] TriggerOut")
end

return Q74216Trigger2

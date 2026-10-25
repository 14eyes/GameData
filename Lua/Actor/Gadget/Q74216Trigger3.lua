require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74216Trigger3 = class("Q74216Trigger3", GadgetActorProxy)
Q74216Trigger3.defaultAlias = "Q74216Trigger3"
local Q74216ClientConfig = require("Quest/Client/Q74216ClientConfig")

local this
local subIDs = Q74216ClientConfig.SubIDs
local npcs = Q74216ClientConfig.Npcs
local points = Q74216ClientConfig.Points
local datas = Q74216ClientConfig.Datas

function Q74216Trigger3:OnPostDataPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger3] OnPostDataPrepare")
    this = self
end

function Q74216Trigger3:OnPostComponentPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74216)
end

function Q74216Trigger3:TriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger3] TriggerIn")
    actorMgr:GetActor("74216"):RequestInteraction(npcs.Npc5337Data.alias, "", true)
    this:DestroySelf()
end

function Q74216Trigger3:PreTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger3] PreTriggerIn")
end

function Q74216Trigger3:LightUpTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger3] LightUpTriggerIn")
end

function Q74216Trigger3:TriggerOut()
    print("[MainId: 74216][Trigger: Q74216Trigger3] TriggerOut")
end

return Q74216Trigger3

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501704Trigger = class("Q1501704Trigger", GadgetActorProxy)
Q1501704Trigger.defaultAlias = "Q1501704Trigger"
local Q15017ClientConfig = require("Quest/Client/Q15017ClientConfig")

local this
local subIDs = Q15017ClientConfig.SubIDs
local npcs = Q15017ClientConfig.Npcs
local points = Q15017ClientConfig.Points
local datas = Q15017ClientConfig.Datas

function Q1501704Trigger:OnPostDataPrepare()
    print("[MainId: 15017][Trigger: Q1501704Trigger] OnPostDataPrepare")
    this = self
end

function Q1501704Trigger:OnPostComponentPrepare()
    print("[MainId: 15017][Trigger: Q1501704Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15017)
end

function Q1501704Trigger:TriggerIn()
    print("[MainId: 15017][Trigger: Q1501704Trigger] TriggerIn")
    actorMgr:GetActor("15017"):RequestInteraction(npcs.Npc14312Data.alias, "", true)
    this:DestroySelf()
end

function Q1501704Trigger:PreTriggerIn()
    print("[MainId: 15017][Trigger: Q1501704Trigger] PreTriggerIn")
end

function Q1501704Trigger:LightUpTriggerIn()
    print("[MainId: 15017][Trigger: Q1501704Trigger] LightUpTriggerIn")
end

function Q1501704Trigger:TriggerOut()
    print("[MainId: 15017][Trigger: Q1501704Trigger] TriggerOut")
end

return Q1501704Trigger

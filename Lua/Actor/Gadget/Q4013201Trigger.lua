require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013201Trigger = class("Q4013201Trigger", GadgetActorProxy)
Q4013201Trigger.defaultAlias = "Q4013201Trigger"
local Q40132ClientConfig = require("Quest/Client/Q40132ClientConfig")

local this
local subIDs = Q40132ClientConfig.SubIDs
local npcs = Q40132ClientConfig.Npcs
local points = Q40132ClientConfig.Points
local datas = Q40132ClientConfig.Datas

function Q4013201Trigger:OnPostDataPrepare()
    print("[MainId: 40132][Trigger: Q4013201Trigger] OnPostDataPrepare")
    this = self
end

function Q4013201Trigger:OnPostComponentPrepare()
    print("[MainId: 40132][Trigger: Q4013201Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(19, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013201Trigger:TriggerIn()
    print("[MainId: 40132][Trigger: Q4013201Trigger] TriggerIn")
    actorMgr:GetActor("40132"):RequestInteraction(npcs.Npc30435Data.alias, "", true)
    this:DestroySelf()
end

function Q4013201Trigger:PreTriggerIn()
    print("[MainId: 40132][Trigger: Q4013201Trigger] PreTriggerIn")
end

function Q4013201Trigger:LightUpTriggerIn()
    print("[MainId: 40132][Trigger: Q4013201Trigger] LightUpTriggerIn")
end

function Q4013201Trigger:TriggerOut()
    print("[MainId: 40132][Trigger: Q4013201Trigger] TriggerOut")
end

return Q4013201Trigger

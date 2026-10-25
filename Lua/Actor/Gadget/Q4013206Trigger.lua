require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013206Trigger = class("Q4013206Trigger", GadgetActorProxy)
Q4013206Trigger.defaultAlias = "Q4013206Trigger"
local Q40132ClientConfig = require("Quest/Client/Q40132ClientConfig")

local this
local subIDs = Q40132ClientConfig.SubIDs
local npcs = Q40132ClientConfig.Npcs
local points = Q40132ClientConfig.Points
local datas = Q40132ClientConfig.Datas

function Q4013206Trigger:OnPostDataPrepare()
    print("[MainId: 40132][Trigger: Q4013206Trigger] OnPostDataPrepare")
    this = self
end

function Q4013206Trigger:OnPostComponentPrepare()
    print("[MainId: 40132][Trigger: Q4013206Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013206Trigger:TriggerIn()
    print("[MainId: 40132][Trigger: Q4013206Trigger] TriggerIn")
    actorMgr:GetActor("40132"):RequestInteraction(npcs.Npc1073Data.alias, "", true)
    this:DestroySelf()
end

function Q4013206Trigger:PreTriggerIn()
    print("[MainId: 40132][Trigger: Q4013206Trigger] PreTriggerIn")
end

function Q4013206Trigger:LightUpTriggerIn()
    print("[MainId: 40132][Trigger: Q4013206Trigger] LightUpTriggerIn")
end

function Q4013206Trigger:TriggerOut()
    print("[MainId: 40132][Trigger: Q4013206Trigger] TriggerOut")
end

return Q4013206Trigger

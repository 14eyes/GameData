require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201602Trigger = class("Q1201602Trigger", GadgetActorProxy)
Q1201602Trigger.defaultAlias = "Q1201602Trigger"
local Q12016ClientConfig = require("Quest/Client/Q12016ClientConfig")

local this
local subIDs = Q12016ClientConfig.SubIDs
local npcs = Q12016ClientConfig.Npcs
local points = Q12016ClientConfig.Points
local datas = Q12016ClientConfig.Datas

function Q1201602Trigger:OnPostDataPrepare()
    print("[MainId: 12016][Trigger: Q1201602Trigger] OnPostDataPrepare")
    this = self
end

function Q1201602Trigger:OnPostComponentPrepare()
    print("[MainId: 12016][Trigger: Q1201602Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1201602Trigger:TriggerIn()
    print("[MainId: 12016][Trigger: Q1201602Trigger] TriggerIn")
    actorMgr:GetActor("12016"):RequestInteraction(npcs.Npc12076Data.alias)
    this:DestroySelf()
end

function Q1201602Trigger:TriggerOut()
    print("[MainId: 12016][Trigger: Q1201602Trigger] TriggerOut")
end

return Q1201602Trigger

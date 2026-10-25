require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402308Talk = class("Q402308Talk", GadgetActorProxy)
Q402308Talk.defaultAlias = "Q402308Talk"
local Q4023ClientConfig = require("Quest/Client/Q4023ClientConfig")

local this
local subIDs = Q4023ClientConfig.SubIDs
local npcs = Q4023ClientConfig.Npcs
local points = Q4023ClientConfig.Points

function Q402308Talk:OnPostDataPrepare()
    print("[MainId: 4023][Trigger: Q402308Talk] OnPostDataPrepare")
    this = self
end

function Q402308Talk:OnPostComponentPrepare()
    print("[MainId: 4023][Trigger: Q402308Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402308Talk:TriggerIn()
    print("[MainId: 4023][Trigger: Q402308Talk] TriggerIn")
    actorMgr:GetActor("4023"):RequestInteraction(npcs.Npc13727Data.alias, "", true)
    this:DestroySelf()
end

function Q402308Talk:PreTriggerIn()
    print("[MainId: 4023][Trigger: Q402308Talk] PreTriggerIn")
end

function Q402308Talk:LightUpTriggerIn()
    print("[MainId: 4023][Trigger: Q402308Talk] LightUpTriggerIn")
end

function Q402308Talk:TriggerOut()
    print("[MainId: 4023][Trigger: Q402308Talk] TriggerOut")
end

return Q402308Talk

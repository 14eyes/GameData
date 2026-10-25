require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401009_TriggerIn = class("Q401009_TriggerIn", GadgetActorProxy)
Q401009_TriggerIn.defaultAlias = "Q401009_TriggerIn"
local Q4010ClientConfig = require("Quest/Client/Q4010ClientConfig")

local this
local subIDs = Q4010ClientConfig.SubIDs
local npcs = Q4010ClientConfig.Npcs
local points = Q4010ClientConfig.Points
local datas = Q4010ClientConfig.Datas

function Q401009_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4010][Trigger: Q401009_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q401009_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4010][Trigger: Q401009_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401009_TriggerIn:TriggerIn()
    print("[MainId: 4010][Trigger: Q401009_TriggerIn] TriggerIn")
    this:DestroySelf()
end

function Q401009_TriggerIn:PreTriggerIn()
    print("[MainId: 4010][Trigger: Q401009_TriggerIn] PreTriggerIn")
end

function Q401009_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4010][Trigger: Q401009_TriggerIn] LightUpTriggerIn")
    actorMgr:GetActor("4010"):RequestInteraction(npcs.Npc1080Data.alias)
end

function Q401009_TriggerIn:TriggerOut()
    print("[MainId: 4010][Trigger: Q401009_TriggerIn] TriggerOut")
end

return Q401009_TriggerIn

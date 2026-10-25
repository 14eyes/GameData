require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401016_TriggerIn = class("Q401016_TriggerIn", GadgetActorProxy)
Q401016_TriggerIn.defaultAlias = "Q401016_TriggerIn"
local Q4010ClientConfig = require("Quest/Client/Q4010ClientConfig")

local this
local subIDs = Q4010ClientConfig.SubIDs
local npcs = Q4010ClientConfig.Npcs
local points = Q4010ClientConfig.Points
local datas = Q4010ClientConfig.Datas

function Q401016_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4010][Trigger: Q401016_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q401016_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4010][Trigger: Q401016_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401016_TriggerIn:TriggerIn()
    print("[MainId: 4010][Trigger: Q401016_TriggerIn] TriggerIn")
    this:DestroySelf()
end

function Q401016_TriggerIn:PreTriggerIn()
    print("[MainId: 4010][Trigger: Q401016_TriggerIn] PreTriggerIn")
end

function Q401016_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4010][Trigger: Q401016_TriggerIn] LightUpTriggerIn")
    actorMgr:GetActor("4010"):RequestInteraction(npcs.Npc13477Data.alias)
end

function Q401016_TriggerIn:TriggerOut()
    print("[MainId: 4010][Trigger: Q401016_TriggerIn] TriggerOut")
end

return Q401016_TriggerIn

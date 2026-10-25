require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401002_TriggerIn = class("Q401002_TriggerIn", GadgetActorProxy)
Q401002_TriggerIn.defaultAlias = "Q401002_TriggerIn"
local Q4010ClientConfig = require("Quest/Client/Q4010ClientConfig")

local this
local subIDs = Q4010ClientConfig.SubIDs
local npcs = Q4010ClientConfig.Npcs
local points = Q4010ClientConfig.Points
local datas = Q4010ClientConfig.Datas

function Q401002_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4010][Trigger: Q401002_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q401002_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4010][Trigger: Q401002_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(35, 20, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401002_TriggerIn:TriggerIn()
    print("[MainId: 4010][Trigger: Q401002_TriggerIn] TriggerIn")
    actorMgr:GetActor("4010"):RequestInteraction(npcs.Npc13477Data.alias)
    this:DestroySelf()
end

function Q401002_TriggerIn:PreTriggerIn()
    print("[MainId: 4010][Trigger: Q401002_TriggerIn] PreTriggerIn")
end

function Q401002_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4010][Trigger: Q401002_TriggerIn] LightUpTriggerIn")
end

function Q401002_TriggerIn:TriggerOut()
    print("[MainId: 4010][Trigger: Q401002_TriggerIn] TriggerOut")
end

return Q401002_TriggerIn

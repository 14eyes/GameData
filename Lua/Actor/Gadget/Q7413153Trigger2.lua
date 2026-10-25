require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413153Trigger2 = class("Q7413153Trigger2", GadgetActorProxy)
Q7413153Trigger2.defaultAlias = "Q7413153Trigger2"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413153Trigger2:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413153Trigger2] OnPostDataPrepare")
    this = self
end

function Q7413153Trigger2:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413153Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413153Trigger2:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413153Trigger2] TriggerIn")
    actorMgr:GetActor("74131"):NarratorOnlyTaskByData(datas.Narrator_7413118)
    this:DestroySelf()
end

function Q7413153Trigger2:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413153Trigger2] PreTriggerIn")
end

function Q7413153Trigger2:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413153Trigger2] LightUpTriggerIn")
end

function Q7413153Trigger2:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413153Trigger2] TriggerOut")
end

return Q7413153Trigger2

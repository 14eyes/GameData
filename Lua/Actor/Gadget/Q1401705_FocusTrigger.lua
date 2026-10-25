require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401705_FocusTrigger = class("Q1401705_FocusTrigger", GadgetActorProxy)
Q1401705_FocusTrigger.defaultAlias = "Q1401705_FocusTrigger"
local Q14017ClientConfig = require("Quest/Client/Q14017ClientConfig")

local this
local subIDs = Q14017ClientConfig.SubIDs
local npcs = Q14017ClientConfig.Npcs
local points = Q14017ClientConfig.Points
local datas = Q14017ClientConfig.Datas

function Q1401705_FocusTrigger:OnPostDataPrepare()
    print("[MainId: 14017][Trigger: Q1401705_FocusTrigger] OnPostDataPrepare")
    this = self
end

function Q1401705_FocusTrigger:OnPostComponentPrepare()
    print("[MainId: 14017][Trigger: Q1401705_FocusTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(28, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401705_FocusTrigger:TriggerIn()
    print("[MainId: 14017][Trigger: Q1401705_FocusTrigger] TriggerIn")
    actorMgr:GetActor("14017"):EnterSceneLookCamera({x = 2654.511, y = 467.341, z = 4130.724}, 0, 2, true, false)
    this:DestroySelf()
end

function Q1401705_FocusTrigger:PreTriggerIn()
    print("[MainId: 14017][Trigger: Q1401705_FocusTrigger] PreTriggerIn")
end

function Q1401705_FocusTrigger:LightUpTriggerIn()
    print("[MainId: 14017][Trigger: Q1401705_FocusTrigger] LightUpTriggerIn")
end

function Q1401705_FocusTrigger:TriggerOut()
    print("[MainId: 14017][Trigger: Q1401705_FocusTrigger] TriggerOut")
end

return Q1401705_FocusTrigger

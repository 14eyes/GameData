require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14038Trigger6 = class("Q14038Trigger6", GadgetActorProxy)
Q14038Trigger6.defaultAlias = "Q14038Trigger6"
local Q14038ClientConfig = require("Quest/Client/Q14038ClientConfig")

local this
local subIDs = Q14038ClientConfig.SubIDs
local npcs = Q14038ClientConfig.Npcs
local points = Q14038ClientConfig.Points
local datas = Q14038ClientConfig.Datas

function Q14038Trigger6:OnPostDataPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger6] OnPostDataPrepare")
    this = self
end

function Q14038Trigger6:OnPostComponentPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger6] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14038)
end

function Q14038Trigger6:TriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger6] TriggerIn")
    actorMgr:GetActor("14038"):QuestNarratorTask(datas.Narrator_1403804)
    this:DestroySelf()
end

function Q14038Trigger6:PreTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger6] PreTriggerIn")
end

function Q14038Trigger6:LightUpTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger6] LightUpTriggerIn")
end

function Q14038Trigger6:TriggerOut()
    print("[MainId: 14038][Trigger: Q14038Trigger6] TriggerOut")
end

return Q14038Trigger6

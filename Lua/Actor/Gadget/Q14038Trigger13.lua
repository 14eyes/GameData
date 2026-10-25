require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14038Trigger13 = class("Q14038Trigger13", GadgetActorProxy)
Q14038Trigger13.defaultAlias = "Q14038Trigger13"
local Q14038ClientConfig = require("Quest/Client/Q14038ClientConfig")

local this
local subIDs = Q14038ClientConfig.SubIDs
local npcs = Q14038ClientConfig.Npcs
local points = Q14038ClientConfig.Points
local datas = Q14038ClientConfig.Datas

function Q14038Trigger13:OnPostDataPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger13] OnPostDataPrepare")
    this = self
end

function Q14038Trigger13:OnPostComponentPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger13] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14038)
end

function Q14038Trigger13:TriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger13] TriggerIn")
    actorUtils.FinishQuestID(false, 1403825)
    this:DestroySelf()
end

function Q14038Trigger13:PreTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger13] PreTriggerIn")
end

function Q14038Trigger13:LightUpTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger13] LightUpTriggerIn")
end

function Q14038Trigger13:TriggerOut()
    print("[MainId: 14038][Trigger: Q14038Trigger13] TriggerOut")
end

return Q14038Trigger13

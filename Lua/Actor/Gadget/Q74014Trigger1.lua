require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74014Trigger1 = class("Q74014Trigger1", GadgetActorProxy)
Q74014Trigger1.defaultAlias = "Q74014Trigger1"
local Q74014ClientConfig = require("Quest/Client/Q74014ClientConfig")

local this
local subIDs = Q74014ClientConfig.SubIDs
local npcs = Q74014ClientConfig.Npcs
local points = Q74014ClientConfig.Points
local datas = Q74014ClientConfig.Datas

function Q74014Trigger1:OnPostDataPrepare()
    print("[MainId: 74014][Trigger: Q74014Trigger1] OnPostDataPrepare")
    this = self
end

function Q74014Trigger1:OnPostComponentPrepare()
    print("[MainId: 74014][Trigger: Q74014Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74014Trigger1:TriggerIn()
    print("[MainId: 74014][Trigger: Q74014Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7401405)
    this:DestroySelf()
end

function Q74014Trigger1:PreTriggerIn()
    print("[MainId: 74014][Trigger: Q74014Trigger1] PreTriggerIn")
end

function Q74014Trigger1:LightUpTriggerIn()
    print("[MainId: 74014][Trigger: Q74014Trigger1] LightUpTriggerIn")
end

function Q74014Trigger1:TriggerOut()
    print("[MainId: 74014][Trigger: Q74014Trigger1] TriggerOut")
end

return Q74014Trigger1

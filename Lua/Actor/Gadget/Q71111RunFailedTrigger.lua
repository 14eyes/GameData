require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71111RunFailedTrigger = class("Q71111RunFailedTrigger", GadgetActorProxy)
Q71111RunFailedTrigger.defaultAlias = "Q71111RunFailedTrigger"
local Q71111ClientConfig = require("Quest/Client/Q71111ClientConfig")

local this
local subIDs = Q71111ClientConfig.SubIDs
local npcs = Q71111ClientConfig.Npcs
local points = Q71111ClientConfig.Points
local datas = Q71111ClientConfig.Datas

function Q71111RunFailedTrigger:OnPostDataPrepare()
    print("[MainId: 71111][Trigger: Q71111RunFailedTrigger] OnPostDataPrepare")
    this = self
end

function Q71111RunFailedTrigger:OnPostComponentPrepare()
    print("[MainId: 71111][Trigger: Q71111RunFailedTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q71111RunFailedTrigger:TriggerIn()
    print("[MainId: 71111][Trigger: Q71111RunFailedTrigger] TriggerIn")
end

function Q71111RunFailedTrigger:PreTriggerIn()
    print("[MainId: 71111][Trigger: Q71111RunFailedTrigger] PreTriggerIn")
end

function Q71111RunFailedTrigger:LightUpTriggerIn()
    print("[MainId: 71111][Trigger: Q71111RunFailedTrigger] LightUpTriggerIn")
end

function Q71111RunFailedTrigger:TriggerOut()
    print("[MainId: 71111][Trigger: Q71111RunFailedTrigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7111104)
    this:DestroySelf()
end

return Q71111RunFailedTrigger

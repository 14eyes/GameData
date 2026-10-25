require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14007Trigger10 = class("Q14007Trigger10", GadgetActorProxy)
Q14007Trigger10.defaultAlias = "Q14007Trigger10"
local Q14007ClientConfig = require("Quest/Client/Q14007ClientConfig")

local this
local subIDs = Q14007ClientConfig.SubIDs
local npcs = Q14007ClientConfig.Npcs
local points = Q14007ClientConfig.Points
local datas = Q14007ClientConfig.Datas

function Q14007Trigger10:OnPostDataPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger10] OnPostDataPrepare")
    this = self
end

function Q14007Trigger10:OnPostComponentPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger10] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14007Trigger10:TriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger10] TriggerIn")
    actorUtils.FinishQuestID(false, 1400704)
    this:DestroySelf()
end

function Q14007Trigger10:PreTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger10] PreTriggerIn")
end

function Q14007Trigger10:LightUpTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger10] LightUpTriggerIn")
end

function Q14007Trigger10:TriggerOut()
    print("[MainId: 14007][Trigger: Q14007Trigger10] TriggerOut")
end

return Q14007Trigger10

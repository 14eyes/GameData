require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14007Trigger5 = class("Q14007Trigger5", GadgetActorProxy)
Q14007Trigger5.defaultAlias = "Q14007Trigger5"
local Q14007ClientConfig = require("Quest/Client/Q14007ClientConfig")

local this
local subIDs = Q14007ClientConfig.SubIDs
local npcs = Q14007ClientConfig.Npcs
local points = Q14007ClientConfig.Points
local datas = Q14007ClientConfig.Datas

function Q14007Trigger5:OnPostDataPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger5] OnPostDataPrepare")
    this = self
end

function Q14007Trigger5:OnPostComponentPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger5] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14007Trigger5:TriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger5] TriggerIn")
    actorUtils.FinishQuestID(false, 1400719)
    this:DestroySelf()
end

function Q14007Trigger5:PreTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger5] PreTriggerIn")
end

function Q14007Trigger5:LightUpTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger5] LightUpTriggerIn")
end

function Q14007Trigger5:TriggerOut()
    print("[MainId: 14007][Trigger: Q14007Trigger5] TriggerOut")
end

return Q14007Trigger5

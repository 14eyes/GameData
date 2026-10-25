require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14007Trigger11 = class("Q14007Trigger11", GadgetActorProxy)
Q14007Trigger11.defaultAlias = "Q14007Trigger11"
local Q14007ClientConfig = require("Quest/Client/Q14007ClientConfig")

local this
local subIDs = Q14007ClientConfig.SubIDs
local npcs = Q14007ClientConfig.Npcs
local points = Q14007ClientConfig.Points
local datas = Q14007ClientConfig.Datas

function Q14007Trigger11:OnPostDataPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger11] OnPostDataPrepare")
    this = self
end

function Q14007Trigger11:OnPostComponentPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger11] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 120, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14007Trigger11:TriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger11] TriggerIn")
end

function Q14007Trigger11:PreTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger11] PreTriggerIn")
end

function Q14007Trigger11:LightUpTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger11] LightUpTriggerIn")
end

function Q14007Trigger11:TriggerOut()
    print("[MainId: 14007][Trigger: Q14007Trigger11] TriggerOut")
    actorUtils.FinishQuestID(true, 1400719)
    this:DestroySelf()
end

return Q14007Trigger11

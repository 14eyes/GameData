require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75007Trigger1 = class("Q75007Trigger1", GadgetActorProxy)
Q75007Trigger1.defaultAlias = "Q75007Trigger1"
local Q75007ClientConfig = require("Quest/Client/Q75007ClientConfig")

local this
local subIDs = Q75007ClientConfig.SubIDs
local npcs = Q75007ClientConfig.Npcs
local datas = Q75007ClientConfig.Datas

function Q75007Trigger1:OnPostDataPrepare()
    print("[MainId: 75007][Trigger: Q75007Trigger1] OnPostDataPrepare")
    this = self
end

function Q75007Trigger1:OnPostComponentPrepare()
    print("[MainId: 75007][Trigger: Q75007Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75007)
end

function Q75007Trigger1:TriggerIn()
    print("[MainId: 75007][Trigger: Q75007Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7500702)
    this:DestroySelf()
end

function Q75007Trigger1:PreTriggerIn()
    print("[MainId: 75007][Trigger: Q75007Trigger1] PreTriggerIn")
end

function Q75007Trigger1:LightUpTriggerIn()
    print("[MainId: 75007][Trigger: Q75007Trigger1] LightUpTriggerIn")
end

function Q75007Trigger1:TriggerOut()
    print("[MainId: 75007][Trigger: Q75007Trigger1] TriggerOut")
end

return Q75007Trigger1

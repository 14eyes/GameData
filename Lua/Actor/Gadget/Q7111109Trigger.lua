require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111109Trigger = class("Q7111109Trigger", GadgetActorProxy)
Q7111109Trigger.defaultAlias = "Q7111109Trigger"
local Q71111ClientConfig = require("Quest/Client/Q71111ClientConfig")

local this
local subIDs = Q71111ClientConfig.SubIDs
local npcs = Q71111ClientConfig.Npcs
local points = Q71111ClientConfig.Points
local datas = Q71111ClientConfig.Datas

function Q7111109Trigger:OnPostDataPrepare()
    print("[MainId: 71111][Trigger: Q7111109Trigger] OnPostDataPrepare")
    this = self
end

function Q7111109Trigger:OnPostComponentPrepare()
    print("[MainId: 71111][Trigger: Q7111109Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7111109Trigger:TriggerIn()
    print("[MainId: 71111][Trigger: Q7111109Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7111109)
    this:DestroySelf()
end

function Q7111109Trigger:PreTriggerIn()
    print("[MainId: 71111][Trigger: Q7111109Trigger] PreTriggerIn")
end

function Q7111109Trigger:LightUpTriggerIn()
    print("[MainId: 71111][Trigger: Q7111109Trigger] LightUpTriggerIn")
end

function Q7111109Trigger:TriggerOut()
    print("[MainId: 71111][Trigger: Q7111109Trigger] TriggerOut")
end

return Q7111109Trigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111503Trigger = class("Q7111503Trigger", GadgetActorProxy)
Q7111503Trigger.defaultAlias = "Q7111503Trigger"
local Q71115ClientConfig = require("Quest/Client/Q71115ClientConfig")

local this
local subIDs = Q71115ClientConfig.SubIDs
local npcs = Q71115ClientConfig.Npcs
local points = Q71115ClientConfig.Points
local datas = Q71115ClientConfig.Datas

function Q7111503Trigger:OnPostDataPrepare()
    print("[MainId: 71115][Trigger: Q7111503Trigger] OnPostDataPrepare")
    this = self
end

function Q7111503Trigger:OnPostComponentPrepare()
    print("[MainId: 71115][Trigger: Q7111503Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7111503Trigger:TriggerIn()
    print("[MainId: 71115][Trigger: Q7111503Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7111503)
    this:DestroySelf()
end

function Q7111503Trigger:PreTriggerIn()
    print("[MainId: 71115][Trigger: Q7111503Trigger] PreTriggerIn")
end

function Q7111503Trigger:LightUpTriggerIn()
    print("[MainId: 71115][Trigger: Q7111503Trigger] LightUpTriggerIn")
end

function Q7111503Trigger:TriggerOut()
    print("[MainId: 71115][Trigger: Q7111503Trigger] TriggerOut")
end

return Q7111503Trigger

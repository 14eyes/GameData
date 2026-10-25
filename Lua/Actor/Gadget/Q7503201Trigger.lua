require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503201Trigger = class("Q7503201Trigger", GadgetActorProxy)
Q7503201Trigger.defaultAlias = "Q7503201Trigger"
local Q75032ClientConfig = require("Quest/Client/Q75032ClientConfig")

local this
local subIDs = Q75032ClientConfig.SubIDs
local npcs = Q75032ClientConfig.Npcs
local datas = Q75032ClientConfig.Datas

function Q7503201Trigger:OnPostDataPrepare()
    print("[MainId: 75032][Trigger: Q7503201Trigger] OnPostDataPrepare")
    this = self
end

function Q7503201Trigger:OnPostComponentPrepare()
    print("[MainId: 75032][Trigger: Q7503201Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(40, 55, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75032)
end

function Q7503201Trigger:TriggerIn()
    print("[MainId: 75032][Trigger: Q7503201Trigger] TriggerIn")
    actorMgr:GetActor("75032"):QuestNarratorTask(datas.NarratorWithId01)
    this:DestroySelf()
end

function Q7503201Trigger:PreTriggerIn()
    print("[MainId: 75032][Trigger: Q7503201Trigger] PreTriggerIn")
end

function Q7503201Trigger:LightUpTriggerIn()
    print("[MainId: 75032][Trigger: Q7503201Trigger] LightUpTriggerIn")
end

function Q7503201Trigger:TriggerOut()
    print("[MainId: 75032][Trigger: Q7503201Trigger] TriggerOut")
end

return Q7503201Trigger

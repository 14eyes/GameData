require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501602Trigger = class("Q7501602Trigger", GadgetActorProxy)
Q7501602Trigger.defaultAlias = "Q7501602Trigger"
local Q75016ClientConfig = require("Quest/Client/Q75016ClientConfig")

local this
local subIDs = Q75016ClientConfig.SubIDs
local npcs = Q75016ClientConfig.Npcs
local datas = Q75016ClientConfig.Datas

function Q7501602Trigger:OnPostDataPrepare()
    print("[MainId: 75016][Trigger: Q7501602Trigger] OnPostDataPrepare")
    this = self
end

function Q7501602Trigger:OnPostComponentPrepare()
    print("[MainId: 75016][Trigger: Q7501602Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75016)
end

function Q7501602Trigger:TriggerIn()
    print("[MainId: 75016][Trigger: Q7501602Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501602)
    this:DestroySelf()
end

function Q7501602Trigger:PreTriggerIn()
    print("[MainId: 75016][Trigger: Q7501602Trigger] PreTriggerIn")
end

function Q7501602Trigger:LightUpTriggerIn()
    print("[MainId: 75016][Trigger: Q7501602Trigger] LightUpTriggerIn")
end

function Q7501602Trigger:TriggerOut()
    print("[MainId: 75016][Trigger: Q7501602Trigger] TriggerOut")
end

return Q7501602Trigger

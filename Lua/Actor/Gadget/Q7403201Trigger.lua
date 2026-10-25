require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7403201Trigger = class("Q7403201Trigger", GadgetActorProxy)
Q7403201Trigger.defaultAlias = "Q7403201Trigger"
local Q74032ClientConfig = require("Quest/Client/Q74032ClientConfig")

local this
local subIDs = Q74032ClientConfig.SubIDs
local npcs = Q74032ClientConfig.Npcs
local points = Q74032ClientConfig.Points
local datas = Q74032ClientConfig.Datas

function Q7403201Trigger:OnPostDataPrepare()
    print("[MainId: 74032][Trigger: Q7403201Trigger] OnPostDataPrepare")
    this = self
end

function Q7403201Trigger:OnPostComponentPrepare()
    print("[MainId: 74032][Trigger: Q7403201Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7403201Trigger:TriggerIn()
    print("[MainId: 74032][Trigger: Q7403201Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7403201)
    this:DestroySelf()
end

function Q7403201Trigger:PreTriggerIn()
    print("[MainId: 74032][Trigger: Q7403201Trigger] PreTriggerIn")
end

function Q7403201Trigger:LightUpTriggerIn()
    print("[MainId: 74032][Trigger: Q7403201Trigger] LightUpTriggerIn")
end

function Q7403201Trigger:TriggerOut()
    print("[MainId: 74032][Trigger: Q7403201Trigger] TriggerOut")
end

return Q7403201Trigger

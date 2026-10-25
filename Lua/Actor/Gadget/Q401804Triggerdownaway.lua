require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401804Triggerdownaway = class("Q401804Triggerdownaway", GadgetActorProxy)
Q401804Triggerdownaway.defaultAlias = "Q401804Triggerdownaway"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401804Triggerdownaway:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerdownaway] OnPostDataPrepare")
    this = self
end

function Q401804Triggerdownaway:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerdownaway] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(80, 40, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401804Triggerdownaway:TriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerdownaway] TriggerIn")
    actorUtils.FinishQuestID(true, 401804)
end

function Q401804Triggerdownaway:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerdownaway] PreTriggerIn")
end

function Q401804Triggerdownaway:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerdownaway] LightUpTriggerIn")
end

function Q401804Triggerdownaway:TriggerOut()
    print("[MainId: 4018][Trigger: Q401804Triggerdownaway] TriggerOut")
end

return Q401804Triggerdownaway

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401804Triggerishere = class("Q401804Triggerishere", GadgetActorProxy)
Q401804Triggerishere.defaultAlias = "Q401804Triggerishere"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401804Triggerishere:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerishere] OnPostDataPrepare")
    this = self
end

function Q401804Triggerishere:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerishere] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 15, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401804Triggerishere:TriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerishere] TriggerIn")
    actorMgr:GetActor("4018"):NarratorOnlyTaskByData(datas.NarratorWithIdishere)
    this:DestroySelf()
end

function Q401804Triggerishere:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerishere] PreTriggerIn")
end

function Q401804Triggerishere:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerishere] LightUpTriggerIn")
end

function Q401804Triggerishere:TriggerOut()
    print("[MainId: 4018][Trigger: Q401804Triggerishere] TriggerOut")
end

return Q401804Triggerishere

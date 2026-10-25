require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401804Triggerlookat = class("Q401804Triggerlookat", GadgetActorProxy)
Q401804Triggerlookat.defaultAlias = "Q401804Triggerlookat"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401804Triggerlookat:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerlookat] OnPostDataPrepare")
    this = self
end

function Q401804Triggerlookat:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerlookat] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(16, 28, 3, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401804Triggerlookat:TriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerlookat] TriggerIn")
    local actor = actorMgr:GetActor("4018")
    actor:EnablePlayerInputByQuest(false)
    actor:EnterSceneLookCamera({x = 4496.122, y = 153.6, z = 4613.423}, 0, 3, false, false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithIdlookat)
    actor:CallDelayByQuest("1", 2, function(arg1)
        actorMgr:GetActor("4018"):EnablePlayerInputByQuest(true)
    end)

    this:DestroySelf()
end

function Q401804Triggerlookat:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerlookat] PreTriggerIn")
end

function Q401804Triggerlookat:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerlookat] LightUpTriggerIn")
end

function Q401804Triggerlookat:TriggerOut()
    print("[MainId: 4018][Trigger: Q401804Triggerlookat] TriggerOut")
end

return Q401804Triggerlookat

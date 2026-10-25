require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7417808Trigger = class("Q7417808Trigger", GadgetActorProxy)
Q7417808Trigger.defaultAlias = "Q7417808Trigger"
local Q74178ClientConfig = require("Quest/Client/Q74178ClientConfig")

local this
local subIDs = Q74178ClientConfig.SubIDs
local npcs = Q74178ClientConfig.Npcs
local datas = Q74178ClientConfig.Datas

function Q7417808Trigger:OnPostDataPrepare()
    print("[MainId: 74178][Trigger: Q7417808Trigger] OnPostDataPrepare")
    this = self
end

function Q7417808Trigger:OnPostComponentPrepare()
    print("[MainId: 74178][Trigger: Q7417808Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7417808Trigger:TriggerIn()
    print("[MainId: 74178][Trigger: Q7417808Trigger] TriggerIn")
    actorMgr:GetActor("74178"):NarratorOnlyTaskByData(datas.Narrator_7417803, function(arg1)
        local actor = actorMgr:GetActor("74178")
        actorUtils.FinishQuestID(false, 7417808)
        this:DestroySelf()
    end)
end

function Q7417808Trigger:PreTriggerIn()
    print("[MainId: 74178][Trigger: Q7417808Trigger] PreTriggerIn")
end

function Q7417808Trigger:LightUpTriggerIn()
    print("[MainId: 74178][Trigger: Q7417808Trigger] LightUpTriggerIn")
end

function Q7417808Trigger:TriggerOut()
    print("[MainId: 74178][Trigger: Q7417808Trigger] TriggerOut")
end

return Q7417808Trigger

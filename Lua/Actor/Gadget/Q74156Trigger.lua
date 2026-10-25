require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74156Trigger = class("Q74156Trigger", GadgetActorProxy)
Q74156Trigger.defaultAlias = "Q74156Trigger"
local Q74156ClientConfig = require("Quest/Client/Q74156ClientConfig")

local this
local subIDs = Q74156ClientConfig.SubIDs
local npcs = Q74156ClientConfig.Npcs
local datas = Q74156ClientConfig.Datas

function Q74156Trigger:OnPostDataPrepare()
    print("[MainId: 74156][Trigger: Q74156Trigger] OnPostDataPrepare")
    this = self
end

function Q74156Trigger:OnPostComponentPrepare()
    print("[MainId: 74156][Trigger: Q74156Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74156Trigger:TriggerIn()
    print("[MainId: 74156][Trigger: Q74156Trigger] TriggerIn")
    actorMgr:GetActor("74156"):QuestNarratorTask(datas.Narrator_7415601, function(arg1)
        local actor = actorMgr:GetActor("74156")
        actorUtils.FinishQuestID(false, 7415601)
        this:DestroySelf()
    end)
end

function Q74156Trigger:PreTriggerIn()
    print("[MainId: 74156][Trigger: Q74156Trigger] PreTriggerIn")
end

function Q74156Trigger:LightUpTriggerIn()
    print("[MainId: 74156][Trigger: Q74156Trigger] LightUpTriggerIn")
end

function Q74156Trigger:TriggerOut()
    print("[MainId: 74156][Trigger: Q74156Trigger] TriggerOut")
end

return Q74156Trigger

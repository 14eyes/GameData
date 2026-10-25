require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503901Trigger = class("Q7503901Trigger", GadgetActorProxy)
Q7503901Trigger.defaultAlias = "Q7503901Trigger"
local Q75039ClientConfig = require("Quest/Client/Q75039ClientConfig")

local this
local subIDs = Q75039ClientConfig.SubIDs
local npcs = Q75039ClientConfig.Npcs
local datas = Q75039ClientConfig.Datas

function Q7503901Trigger:OnPostDataPrepare()
    print("[MainId: 75039][Trigger: Q7503901Trigger] OnPostDataPrepare")
    this = self
end

function Q7503901Trigger:OnPostComponentPrepare()
    print("[MainId: 75039][Trigger: Q7503901Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75039)
end

function Q7503901Trigger:TriggerIn()
    print("[MainId: 75039][Trigger: Q7503901Trigger] TriggerIn")
    actorMgr:GetActor("75039"):QuestNarratorTask(datas.NarratorWithId)
    this:DestroySelf()
end

function Q7503901Trigger:PreTriggerIn()
    print("[MainId: 75039][Trigger: Q7503901Trigger] PreTriggerIn")
end

function Q7503901Trigger:LightUpTriggerIn()
    print("[MainId: 75039][Trigger: Q7503901Trigger] LightUpTriggerIn")
end

function Q7503901Trigger:TriggerOut()
    print("[MainId: 75039][Trigger: Q7503901Trigger] TriggerOut")
end

return Q7503901Trigger

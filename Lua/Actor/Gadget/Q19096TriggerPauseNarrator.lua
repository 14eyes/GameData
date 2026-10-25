require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19096TriggerPauseNarrator = class("Q19096TriggerPauseNarrator", GadgetActorProxy)
Q19096TriggerPauseNarrator.defaultAlias = "Q19096TriggerPauseNarrator"
local Q19096ClientConfig = require("Quest/Client/Q19096ClientConfig")

local this
local subIDs = Q19096ClientConfig.SubIDs
local npcs = Q19096ClientConfig.Npcs
local points = Q19096ClientConfig.Points
local datas = Q19096ClientConfig.Datas

function Q19096TriggerPauseNarrator:OnPostDataPrepare()
    print("[MainId: 19096][Trigger: Q19096TriggerPauseNarrator] OnPostDataPrepare")
    this = self
end

function Q19096TriggerPauseNarrator:OnPostComponentPrepare()
    print("[MainId: 19096][Trigger: Q19096TriggerPauseNarrator] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19096TriggerPauseNarrator:TriggerIn()
    print("[MainId: 19096][Trigger: Q19096TriggerPauseNarrator] TriggerIn")
end

function Q19096TriggerPauseNarrator:PreTriggerIn()
    print("[MainId: 19096][Trigger: Q19096TriggerPauseNarrator] PreTriggerIn")
end

function Q19096TriggerPauseNarrator:LightUpTriggerIn()
    print("[MainId: 19096][Trigger: Q19096TriggerPauseNarrator] LightUpTriggerIn")
end

function Q19096TriggerPauseNarrator:TriggerOut()
    print("[MainId: 19096][Trigger: Q19096TriggerPauseNarrator] TriggerOut")
    actorMgr:GetActor("19096"):TryPauseCurAutoNarrator()
end

return Q19096TriggerPauseNarrator

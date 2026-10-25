require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4012903TriggerNarrator = class("Q4012903TriggerNarrator", GadgetActorProxy)
Q4012903TriggerNarrator.defaultAlias = "Q4012903TriggerNarrator"
local Q40129ClientConfig = require("Quest/Client/Q40129ClientConfig")

local this
local subIDs = Q40129ClientConfig.SubIDs
local npcs = Q40129ClientConfig.Npcs
local points = Q40129ClientConfig.Points
local datas = Q40129ClientConfig.Datas

function Q4012903TriggerNarrator:OnPostDataPrepare()
    print("[MainId: 40129][Trigger: Q4012903TriggerNarrator] OnPostDataPrepare")
    this = self
end

function Q4012903TriggerNarrator:OnPostComponentPrepare()
    print("[MainId: 40129][Trigger: Q4012903TriggerNarrator] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4012903TriggerNarrator:TriggerIn()
    print("[MainId: 40129][Trigger: Q4012903TriggerNarrator] TriggerIn")
    local actor = actorMgr:GetActor("40129")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 40129)
    actor:EnterSceneLookCamera({x = 3201.521, y = 407.221, z = 3832.475}, 0, 3, true, true)
    this:DestroySelf()
end

function Q4012903TriggerNarrator:PreTriggerIn()
    print("[MainId: 40129][Trigger: Q4012903TriggerNarrator] PreTriggerIn")
end

function Q4012903TriggerNarrator:LightUpTriggerIn()
    print("[MainId: 40129][Trigger: Q4012903TriggerNarrator] LightUpTriggerIn")
end

function Q4012903TriggerNarrator:TriggerOut()
    print("[MainId: 40129][Trigger: Q4012903TriggerNarrator] TriggerOut")
end

return Q4012903TriggerNarrator

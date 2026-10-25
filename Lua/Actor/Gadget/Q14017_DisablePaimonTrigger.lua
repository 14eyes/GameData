require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14017_DisablePaimonTrigger = class("Q14017_DisablePaimonTrigger", GadgetActorProxy)
Q14017_DisablePaimonTrigger.defaultAlias = "Q14017_DisablePaimonTrigger"
local Q14017ClientConfig = require("Quest/Client/Q14017ClientConfig")

local this
local subIDs = Q14017ClientConfig.SubIDs
local npcs = Q14017ClientConfig.Npcs
local points = Q14017ClientConfig.Points
local datas = Q14017ClientConfig.Datas

function Q14017_DisablePaimonTrigger:OnPostDataPrepare()
    print("[MainId: 14017][Trigger: Q14017_DisablePaimonTrigger] OnPostDataPrepare")
    this = self
end

function Q14017_DisablePaimonTrigger:OnPostComponentPrepare()
    print("[MainId: 14017][Trigger: Q14017_DisablePaimonTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14017_DisablePaimonTrigger:TriggerIn()
    print("[MainId: 14017][Trigger: Q14017_DisablePaimonTrigger] TriggerIn")
    globalActor:DisablePaimonInProfilePage({3})
end

function Q14017_DisablePaimonTrigger:PreTriggerIn()
    print("[MainId: 14017][Trigger: Q14017_DisablePaimonTrigger] PreTriggerIn")
end

function Q14017_DisablePaimonTrigger:LightUpTriggerIn()
    print("[MainId: 14017][Trigger: Q14017_DisablePaimonTrigger] LightUpTriggerIn")
end

function Q14017_DisablePaimonTrigger:TriggerOut()
    print("[MainId: 14017][Trigger: Q14017_DisablePaimonTrigger] TriggerOut")
    globalActor:ResumePaimonInProfilePage({3})
end

return Q14017_DisablePaimonTrigger

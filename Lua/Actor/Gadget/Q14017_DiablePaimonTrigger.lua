require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14017_DiablePaimonTrigger = class("Q14017_DiablePaimonTrigger", GadgetActorProxy)
Q14017_DiablePaimonTrigger.defaultAlias = "Q14017_DiablePaimonTrigger"
local Q14017ClientConfig = require("Quest/Client/Q14017ClientConfig")

local this
local subIDs = Q14017ClientConfig.SubIDs
local npcs = Q14017ClientConfig.Npcs
local points = Q14017ClientConfig.Points
local datas = Q14017ClientConfig.Datas

function Q14017_DiablePaimonTrigger:OnPostDataPrepare()
    print("[MainId: 14017][Trigger: Q14017_DiablePaimonTrigger] OnPostDataPrepare")
    this = self
end

function Q14017_DiablePaimonTrigger:OnPostComponentPrepare()
    print("[MainId: 14017][Trigger: Q14017_DiablePaimonTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14017_DiablePaimonTrigger:TriggerIn()
    print("[MainId: 14017][Trigger: Q14017_DiablePaimonTrigger] TriggerIn")
    globalActor:DisablePaimonInProfilePage(datas.SceneIdList)
end

function Q14017_DiablePaimonTrigger:PreTriggerIn()
    print("[MainId: 14017][Trigger: Q14017_DiablePaimonTrigger] PreTriggerIn")
end

function Q14017_DiablePaimonTrigger:LightUpTriggerIn()
    print("[MainId: 14017][Trigger: Q14017_DiablePaimonTrigger] LightUpTriggerIn")
end

function Q14017_DiablePaimonTrigger:TriggerOut()
    print("[MainId: 14017][Trigger: Q14017_DiablePaimonTrigger] TriggerOut")
    globalActor:ResumePaimonInProfilePage(datas.SceneIdList)
end

return Q14017_DiablePaimonTrigger

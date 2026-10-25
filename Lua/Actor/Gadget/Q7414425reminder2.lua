require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414425reminder2 = class("Q7414425reminder2", GadgetActorProxy)
Q7414425reminder2.defaultAlias = "Q7414425reminder2"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414425reminder2:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414425reminder2] OnPostDataPrepare")
    this = self
end

function Q7414425reminder2:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414425reminder2] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414425reminder2:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414425reminder2] TriggerIn")
    actorMgr:GetActor("74144"):NarratorOnlyTaskByData(datas.NarratorWithId_10)
    this:DestroySelf()
end

function Q7414425reminder2:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414425reminder2] PreTriggerIn")
end

function Q7414425reminder2:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414425reminder2] LightUpTriggerIn")
end

function Q7414425reminder2:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414425reminder2] TriggerOut")
end

return Q7414425reminder2

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414424reminder = class("Q7414424reminder", GadgetActorProxy)
Q7414424reminder.defaultAlias = "Q7414424reminder"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414424reminder:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414424reminder] OnPostDataPrepare")
    this = self
end

function Q7414424reminder:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414424reminder] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414424reminder:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414424reminder] TriggerIn")
    actorMgr:GetActor("74144"):NarratorOnlyTaskByData(datas.NarratorWithId_05)
    this:DestroySelf()
end

function Q7414424reminder:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414424reminder] PreTriggerIn")
end

function Q7414424reminder:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414424reminder] LightUpTriggerIn")
end

function Q7414424reminder:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414424reminder] TriggerOut")
end

return Q7414424reminder

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414402reminder = class("Q7414402reminder", GadgetActorProxy)
Q7414402reminder.defaultAlias = "Q7414402reminder"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414402reminder:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414402reminder] OnPostDataPrepare")
    this = self
end

function Q7414402reminder:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414402reminder] OnPostComponentPrepare")
    this:AddComponentTrigger(31, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414402reminder:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414402reminder] TriggerIn")
    actorMgr:GetActor("74144"):NarratorOnlyTaskByData(datas.NarratorWithId7414401)
    this:DestroySelf()
end

function Q7414402reminder:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414402reminder] PreTriggerIn")
end

function Q7414402reminder:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414402reminder] LightUpTriggerIn")
end

function Q7414402reminder:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414402reminder] TriggerOut")
end

return Q7414402reminder

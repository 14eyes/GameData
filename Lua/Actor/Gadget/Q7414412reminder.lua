require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414412reminder = class("Q7414412reminder", GadgetActorProxy)
Q7414412reminder.defaultAlias = "Q7414412reminder"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414412reminder:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414412reminder] OnPostDataPrepare")
    this = self
end

function Q7414412reminder:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414412reminder] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414412reminder:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414412reminder] TriggerIn")
    actorMgr:GetActor("74144"):NarratorOnlyTaskByData(datas.NarratorWithId_02)
    this:DestroySelf()
end

function Q7414412reminder:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414412reminder] PreTriggerIn")
end

function Q7414412reminder:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414412reminder] LightUpTriggerIn")
end

function Q7414412reminder:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414412reminder] TriggerOut")
end

return Q7414412reminder

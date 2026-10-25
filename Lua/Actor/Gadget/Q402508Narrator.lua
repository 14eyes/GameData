require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402508Narrator = class("Q402508Narrator", GadgetActorProxy)
Q402508Narrator.defaultAlias = "Q402508Narrator"
local Q4025ClientConfig = require("Quest/Client/Q4025ClientConfig")

local this
local subIDs = Q4025ClientConfig.SubIDs
local npcs = Q4025ClientConfig.Npcs
local points = Q4025ClientConfig.Points
local datas = Q4025ClientConfig.Datas

function Q402508Narrator:OnPostDataPrepare()
    print("[MainId: 4025][Trigger: Q402508Narrator] OnPostDataPrepare")
    this = self
end

function Q402508Narrator:OnPostComponentPrepare()
    print("[MainId: 4025][Trigger: Q402508Narrator] OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402508Narrator:TriggerIn()
    print("[MainId: 4025][Trigger: Q402508Narrator] TriggerIn")
    local actor = actorMgr:GetActor("4025")
    actor:EnterSceneLookCamera({x = 3329.162, y = 454.452, z = 3811.095}, 0, 3, false, false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId_02)
    this:DestroySelf()
end

function Q402508Narrator:PreTriggerIn()
    print("[MainId: 4025][Trigger: Q402508Narrator] PreTriggerIn")
end

function Q402508Narrator:LightUpTriggerIn()
    print("[MainId: 4025][Trigger: Q402508Narrator] LightUpTriggerIn")
end

function Q402508Narrator:TriggerOut()
    print("[MainId: 4025][Trigger: Q402508Narrator] TriggerOut")
end

return Q402508Narrator

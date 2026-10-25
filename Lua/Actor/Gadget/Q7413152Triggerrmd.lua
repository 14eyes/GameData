require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413152Triggerrmd = class("Q7413152Triggerrmd", GadgetActorProxy)
Q7413152Triggerrmd.defaultAlias = "Q7413152Triggerrmd"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413152Triggerrmd:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413152Triggerrmd] OnPostDataPrepare")
    this = self
end

function Q7413152Triggerrmd:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413152Triggerrmd] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413152Triggerrmd:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413152Triggerrmd] TriggerIn")
    actorMgr:GetActor("74131"):NarratorOnlyTaskByData(datas.Narrator_7413117)
    this:DestroySelf()
end

function Q7413152Triggerrmd:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413152Triggerrmd] PreTriggerIn")
end

function Q7413152Triggerrmd:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413152Triggerrmd] LightUpTriggerIn")
end

function Q7413152Triggerrmd:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413152Triggerrmd] TriggerOut")
end

return Q7413152Triggerrmd

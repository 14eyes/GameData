require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402612CS = class("Q7402612CS", GadgetActorProxy)
Q7402612CS.defaultAlias = "Q7402612CS"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402612CS:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402612CS] OnPostDataPrepare")
    this = self
end

function Q7402612CS:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402612CS] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402612CS:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402612CS] TriggerIn")
    actorMgr:GetActor("74026"):PlayCutsceneIndex(7402612, function(arg1)
        actorMgr:GetActor("74026"):NarratorOnlyTaskByData(datas.PlayCS, nil, 74026)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q7402612CS:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402612CS] PreTriggerIn")
end

function Q7402612CS:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402612CS] LightUpTriggerIn")
end

function Q7402612CS:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402612CS] TriggerOut")
end

return Q7402612CS

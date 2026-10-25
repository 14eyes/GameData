require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72804Trigger1 = class("Q72804Trigger1", GadgetActorProxy)
Q72804Trigger1.defaultAlias = "Q72804Trigger1"
local Q72804ClientConfig = require("Quest/Client/Q72804ClientConfig")

local this
local subIDs = Q72804ClientConfig.SubIDs
local npcs = Q72804ClientConfig.Npcs
local datas = Q72804ClientConfig.Datas

function Q72804Trigger1:OnPostDataPrepare()
    print("[MainId: 72804][Trigger: Q72804Trigger1] OnPostDataPrepare")
    this = self
end

function Q72804Trigger1:OnPostComponentPrepare()
    print("[MainId: 72804][Trigger: Q72804Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q72804Trigger1:TriggerIn()
    print("[MainId: 72804][Trigger: Q72804Trigger1] TriggerIn")
    actorMgr:GetActor("72804"):NarratorOnlyTaskByData(datas.kaiche_fight_01, nil, 72804)
    this:DestroySelf()
end

function Q72804Trigger1:TriggerOut()
    print("[MainId: 72804][Trigger: Q72804Trigger1] TriggerOut")
end

return Q72804Trigger1

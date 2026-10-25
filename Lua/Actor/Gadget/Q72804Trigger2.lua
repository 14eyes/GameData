require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72804Trigger2 = class("Q72804Trigger2", GadgetActorProxy)
Q72804Trigger2.defaultAlias = "Q72804Trigger2"
local Q72804ClientConfig = require("Quest/Client/Q72804ClientConfig")

local this
local subIDs = Q72804ClientConfig.SubIDs
local npcs = Q72804ClientConfig.Npcs
local datas = Q72804ClientConfig.Datas

function Q72804Trigger2:OnPostDataPrepare()
    print("[MainId: 72804][Trigger: Q72804Trigger2] OnPostDataPrepare")
    this = self
end

function Q72804Trigger2:OnPostComponentPrepare()
    print("[MainId: 72804][Trigger: Q72804Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q72804Trigger2:TriggerIn()
    print("[MainId: 72804][Trigger: Q72804Trigger2] TriggerIn")
    actorMgr:GetActor("72804"):NarratorOnlyTaskByData(datas.kaiche_fight_03, nil, 72804)
    this:DestroySelf()
end

function Q72804Trigger2:TriggerOut()
    print("[MainId: 72804][Trigger: Q72804Trigger2] TriggerOut")
end

return Q72804Trigger2

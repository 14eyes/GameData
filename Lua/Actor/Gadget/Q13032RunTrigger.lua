require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13032RunTrigger = class("Q13032RunTrigger", GadgetActorProxy)
Q13032RunTrigger.defaultAlias = "Q13032RunTrigger"
local Q13032ClientConfig = require("Quest/Client/Q13032ClientConfig")

local this
local subIDs = Q13032ClientConfig.SubIDs
local npcs = Q13032ClientConfig.Npcs
local datas = Q13032ClientConfig.Datas

function Q13032RunTrigger:OnPostDataPrepare()
    print("[MainId: 13032][Trigger: Q13032RunTrigger] OnPostDataPrepare")
    this = self
end

function Q13032RunTrigger:OnPostComponentPrepare()
    print("[MainId: 13032][Trigger: Q13032RunTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13032RunTrigger:TriggerIn()
    print("[MainId: 13032][Trigger: Q13032RunTrigger] TriggerIn")
    actorMgr:GetActor("13032"):NarratorOnlyTaskByData(datas.NarratorWithId)
    this:DestroySelf()
end

function Q13032RunTrigger:PreTriggerIn()
    print("[MainId: 13032][Trigger: Q13032RunTrigger] PreTriggerIn")
end

function Q13032RunTrigger:LightUpTriggerIn()
    print("[MainId: 13032][Trigger: Q13032RunTrigger] LightUpTriggerIn")
end

function Q13032RunTrigger:TriggerOut()
    print("[MainId: 13032][Trigger: Q13032RunTrigger] TriggerOut")
end

return Q13032RunTrigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13032MushroomTrigger = class("Q13032MushroomTrigger", GadgetActorProxy)
Q13032MushroomTrigger.defaultAlias = "Q13032MushroomTrigger"
local Q13032ClientConfig = require("Quest/Client/Q13032ClientConfig")

local this
local subIDs = Q13032ClientConfig.SubIDs
local npcs = Q13032ClientConfig.Npcs
local datas = Q13032ClientConfig.Datas

function Q13032MushroomTrigger:OnPostDataPrepare()
    print("[MainId: 13032][Trigger: Q13032MushroomTrigger] OnPostDataPrepare")
    this = self
end

function Q13032MushroomTrigger:OnPostComponentPrepare()
    print("[MainId: 13032][Trigger: Q13032MushroomTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13032MushroomTrigger:TriggerIn()
    print("[MainId: 13032][Trigger: Q13032MushroomTrigger] TriggerIn")
    actorMgr:GetActor("13032"):NarratorOnlyTaskByData(datas.NarratorWithId_01)
    this:DestroySelf()
end

function Q13032MushroomTrigger:PreTriggerIn()
    print("[MainId: 13032][Trigger: Q13032MushroomTrigger] PreTriggerIn")
end

function Q13032MushroomTrigger:LightUpTriggerIn()
    print("[MainId: 13032][Trigger: Q13032MushroomTrigger] LightUpTriggerIn")
end

function Q13032MushroomTrigger:TriggerOut()
    print("[MainId: 13032][Trigger: Q13032MushroomTrigger] TriggerOut")
end

return Q13032MushroomTrigger

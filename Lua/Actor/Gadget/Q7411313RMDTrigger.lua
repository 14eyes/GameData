require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411313RMDTrigger = class("Q7411313RMDTrigger", GadgetActorProxy)
Q7411313RMDTrigger.defaultAlias = "Q7411313RMDTrigger"
local Q74113ClientConfig = require("Quest/Client/Q74113ClientConfig")

local this
local subIDs = Q74113ClientConfig.SubIDs
local npcs = Q74113ClientConfig.Npcs
local points = Q74113ClientConfig.Points
local datas = Q74113ClientConfig.Datas

function Q7411313RMDTrigger:OnPostDataPrepare()
    print("[MainId: 74113][Trigger: Q7411313RMDTrigger] OnPostDataPrepare")
    this = self
end

function Q7411313RMDTrigger:OnPostComponentPrepare()
    print("[MainId: 74113][Trigger: Q7411313RMDTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411313RMDTrigger:TriggerIn()
    print("[MainId: 74113][Trigger: Q7411313RMDTrigger] TriggerIn")
    actorMgr:GetActor("74113"):NarratorOnlyTaskByData(datas.Q7411313RMD)
    this:DestroySelf()
end

function Q7411313RMDTrigger:PreTriggerIn()
    print("[MainId: 74113][Trigger: Q7411313RMDTrigger] PreTriggerIn")
end

function Q7411313RMDTrigger:LightUpTriggerIn()
    print("[MainId: 74113][Trigger: Q7411313RMDTrigger] LightUpTriggerIn")
end

function Q7411313RMDTrigger:TriggerOut()
    print("[MainId: 74113][Trigger: Q7411313RMDTrigger] TriggerOut")
end

return Q7411313RMDTrigger

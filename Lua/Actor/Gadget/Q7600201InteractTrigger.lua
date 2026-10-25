require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600201InteractTrigger = class("Q7600201InteractTrigger", GadgetActorProxy)
Q7600201InteractTrigger.defaultAlias = "Q7600201InteractTrigger"
local Q76002ClientConfig = require("Quest/Client/Q76002ClientConfig")

local this
local subIDs = Q76002ClientConfig.SubIDs
local datas = Q76002ClientConfig.Datas
local npcs = Q76002ClientConfig.Npcs
local points = Q76002ClientConfig.Points

function Q7600201InteractTrigger:OnPostDataPrepare()
    print("Q7600201InteractTrigger - OnPostDataPrepare")
    this = self
end

function Q7600201InteractTrigger:OnPostComponentPrepare()
    print("Q7600201InteractTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76002)
end

function Q7600201InteractTrigger:TriggerIn()
    print("Q7600201InteractTrigger - TriggerIn")
    actorMgr:GetActor("76002"):ClearNarratorTask()
    actorMgr:GetActor("76002"):RequestInteraction(npcs.Npc22019.alias, "", true)
    this:DestroySelf()
end

function Q7600201InteractTrigger:PreTriggerIn()
    print("Q7600201InteractTrigger - PreTriggerIn")
end

function Q7600201InteractTrigger:LightUpTriggerIn()
    print("Q7600201InteractTrigger - LightUpTriggerIn")
end

function Q7600201InteractTrigger:TriggerOut()
    print("Q7600201InteractTrigger - TriggerOut")
end

return Q7600201InteractTrigger

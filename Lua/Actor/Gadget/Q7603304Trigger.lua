require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7603304Trigger = class("Q7603304Trigger", GadgetActorProxy)
Q7603304Trigger.defaultAlias = "Q7603304Trigger"
local Q76033ClientConfig = require("Quest/Client/Q76033ClientConfig")

local this
local subIDs = Q76033ClientConfig.SubIDs
local datas = Q76033ClientConfig.Datas
local npcs = Q76033ClientConfig.Npcs
local points = Q76033ClientConfig.Points

function Q7603304Trigger:OnPostDataPrepare()
    print("Q7603304Trigger - OnPostDataPrepare")
    this = self
end

function Q7603304Trigger:OnPostComponentPrepare()
    print("Q7603304Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76033)
end

function Q7603304Trigger:TriggerIn()
    print("Q7603304Trigger - TriggerIn")
    actorMgr:GetActor("76033"):RequestInteraction(npcs.Npc15677.alias, "", true)
    this:DestroySelf()
end

function Q7603304Trigger:PreTriggerIn()
    print("Q7603304Trigger - PreTriggerIn")
end

function Q7603304Trigger:LightUpTriggerIn()
    print("Q7603304Trigger - LightUpTriggerIn")
end

function Q7603304Trigger:TriggerOut()
    print("Q7603304Trigger - TriggerOut")
end

return Q7603304Trigger

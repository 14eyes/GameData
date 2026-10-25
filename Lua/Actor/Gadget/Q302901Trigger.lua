require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302901Trigger = class("Q302901Trigger", GadgetActorProxy)
Q302901Trigger.defaultAlias = "Q302901Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302901Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302901Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302901Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("3029")
    actor:ClearNarratorTask()
    local v = actorMgr:GetActor("Q302901TriggerNear")
    if v ~= nil then
        v:DestroySelf()
    end

    actor:RequestInteraction(npcs.Npc12991Data.alias)
    this:DestroySelf()
end

function Q302901Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302901Trigger

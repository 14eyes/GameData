require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302901TriggerNear = class("Q302901TriggerNear", GadgetActorProxy)
Q302901TriggerNear.defaultAlias = "Q302901TriggerNear"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302901TriggerNear:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302901TriggerNear:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302901TriggerNear:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("3029")
    actor:ClearNarratorTask()
    local v = actorMgr:GetActor("Q302901Trigger")
    if v ~= nil then
        v:DestroySelf()
    end

    actor:RequestInteraction(npcs.Npc12991Data.alias)
    this:DestroySelf()
end

function Q302901TriggerNear:TriggerOut()
    print("TriggerOut")
end

return Q302901TriggerNear

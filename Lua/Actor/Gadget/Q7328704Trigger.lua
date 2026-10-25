require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328704Trigger = class("Q7328704Trigger", GadgetActorProxy)
Q7328704Trigger.defaultAlias = "Q7328704Trigger"
local Q73287ClientConfig = require("Quest/Client/Q73287ClientConfig")

local this
local subIDs = Q73287ClientConfig.SubIDs
local npcs = Q73287ClientConfig.Npcs
local datas = Q73287ClientConfig.Datas

function Q7328704Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328704Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7328704Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7328704Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7328704Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("73287"):CallDelay(0.5, function(arg1)
        actorMgr:GetActor("73287"):RequestInteraction(npcs.Npc4298Data.alias)
        this:DestroySelf()
    end)
end

function Q7328704Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328704Trigger

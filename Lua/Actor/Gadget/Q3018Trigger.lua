require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3018Trigger = class("Q3018Trigger", GadgetActorProxy)
Q3018Trigger.defaultAlias = "Q3018Trigger"
local Q3018ClientConfig = require("Quest/Client/Q3018ClientConfig")

local subIDs = Q3018ClientConfig.SubIDs
local npcs = Q3018ClientConfig.Npcs
local datas = Q3018ClientConfig.Datas

function Q3018Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3018Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, function(arg1)
        actorMgr:GetActor("3018"):RequestInteraction(npcs.Npc1059Data.alias)
    end, self.TriggerOut)
end

function Q3018Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q3018Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3018Trigger

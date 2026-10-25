require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215606Trigger = class("Q7215606Trigger", GadgetActorProxy)
Q7215606Trigger.defaultAlias = "Q7215606Trigger"
local Q72156ClientConfig = require("Quest/Client/Q72156ClientConfig")

local subIDs = Q72156ClientConfig.SubIDs
local npcs = Q72156ClientConfig.Npcs
local datas = Q72156ClientConfig.Datas

function Q7215606Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215606Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215606Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72156"):CallDelay(1, function(arg1)
        actorMgr:GetActor("72156"):RequestInteractionForceAlias(npcs.Npc3180Data.alias)
    end)

    self:DestroySelf()
end

function Q7215606Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215606Trigger

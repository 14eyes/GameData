require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215703Trigger = class("Q7215703Trigger", GadgetActorProxy)
Q7215703Trigger.defaultAlias = "Q7215703Trigger"
local Q72157ClientConfig = require("Quest/Client/Q72157ClientConfig")

local subIDs = Q72157ClientConfig.SubIDs
local npcs = Q72157ClientConfig.Npcs
local datas = Q72157ClientConfig.Datas

function Q7215703Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215703Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215703Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72157"):CallDelay(0.5, function(arg1)
        actorMgr:GetActor("72157"):RequestInteractionForceAlias(npcs.Npc3180Data.alias)
        arg1:DestroySelf()
    end)
end

function Q7215703Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215703Trigger

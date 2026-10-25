require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23024Trigger = class("Q23024Trigger", GadgetActorProxy)
Q23024Trigger.defaultAlias = "Q23024Trigger"
local Q23024ClientConfig = require("Quest/Client/Q23024ClientConfig")

local subIDs = Q23024ClientConfig.SubIDs
local npcs = Q23024ClientConfig.Npcs
local datas = Q23024ClientConfig.Datas

function Q23024Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23024Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q23024Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23024"):AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:GetActor("23024"):RequestInteraction(npcs.Npc4079Data.alias)
    end)

    self:DestroySelf()
end

function Q23024Trigger:TriggerOut()
    print("TriggerOut")
end

return Q23024Trigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73185Trigger6 = class("Q73185Trigger6", GadgetActorProxy)
Q73185Trigger6.defaultAlias = "Q73185Trigger6"
local Q73185ClientConfig = require("Quest/Client/Q73185ClientConfig")

local subIDs = Q73185ClientConfig.SubIDs
local npcs = Q73185ClientConfig.Npcs
local datas = Q73185ClientConfig.Datas

function Q73185Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73185Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73185Trigger6:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73185"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("73185"):RequestInteraction(npcs.Npc20838Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q73185Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q73185Trigger6

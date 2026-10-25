require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19055Trigger3 = class("Q19055Trigger3", GadgetActorProxy)
Q19055Trigger3.defaultAlias = "Q19055Trigger3"
local Q19055ClientConfig = require("Quest/Client/Q19055ClientConfig")

local subIDs = Q19055ClientConfig.SubIDs
local npcs = Q19055ClientConfig.Npcs
local datas = Q19055ClientConfig.Datas

function Q19055Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19055Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19055Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19055"):RequestInteraction(npcs.Npc12056Data.alias)
    self:DestroySelf()
end

function Q19055Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19055Trigger3

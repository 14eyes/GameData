require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19047Trigger3 = class("Q19047Trigger3", GadgetActorProxy)
Q19047Trigger3.defaultAlias = "Q19047Trigger3"
local Q19047ClientConfig = require("Quest/Client/Q19047ClientConfig")

local subIDs = Q19047ClientConfig.SubIDs
local npcs = Q19047ClientConfig.Npcs
local datas = Q19047ClientConfig.Datas

function Q19047Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19047Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19047Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19047"):RequestInteraction(npcs.Coop_YunjinData.alias)
    self:DestroySelf()
end

function Q19047Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19047Trigger3

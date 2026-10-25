require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19027Trigger3 = class("Q19027Trigger3", GadgetActorProxy)
Q19027Trigger3.defaultAlias = "Q19027Trigger3"
local Q19027ClientConfig = require("Quest/Client/Q19027ClientConfig")

local subIDs = Q19027ClientConfig.SubIDs
local npcs = Q19027ClientConfig.Npcs
local datas = Q19027ClientConfig.Datas

function Q19027Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19027Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19027Trigger3:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19027")
    actor:CreateQuestNpcById(1902708, npcs.Coop_GorouData.id, 0)
    actor:RequestInteraction(npcs.Coop_GorouData.alias)
    self:DestroySelf()
end

function Q19027Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19027Trigger3

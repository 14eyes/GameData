require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19003Trigger190030501 = class("Q19003Trigger190030501", GadgetActorProxy)
Q19003Trigger190030501.defaultAlias = "Q19003Trigger190030501"
local Q19003ClientConfig = require("Quest/Client/Q19003ClientConfig")

local mainID = Q19003ClientConfig.MainID
local actorAlias = Q19003ClientConfig.ActorAlias
local subIDs = Q19003ClientConfig.SubIDs
local npcs = Q19003ClientConfig.Npcs
local datas = Q19003ClientConfig.Datas

function Q19003Trigger190030501:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19003Trigger190030501:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(16, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19003Trigger190030501:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Coop_BarbaraData.alias)
    self:DestroySelf()
end

function Q19003Trigger190030501:TriggerOut()
    print("TriggerOut")
end

return Q19003Trigger190030501

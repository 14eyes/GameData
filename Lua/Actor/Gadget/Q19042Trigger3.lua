require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19042Trigger3 = class("Q19042Trigger3", GadgetActorProxy)
Q19042Trigger3.defaultAlias = "Q19042Trigger3"
local Q19042ClientConfig = require("Quest/Client/Q19042ClientConfig")

local mainID = Q19042ClientConfig.MainID
local actorAlias = Q19042ClientConfig.ActorAlias
local subIDs = Q19042ClientConfig.SubIDs
local npcs = Q19042ClientConfig.Npcs
local datas = Q19042ClientConfig.Datas

function Q19042Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19042Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19042Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestCoopInteractionFromSubStartPoint(103201, 1904203)
end

function Q19042Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19042Trigger3

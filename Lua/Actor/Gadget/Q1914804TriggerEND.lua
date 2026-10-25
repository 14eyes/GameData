require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914804TriggerEND = class("Q1914804TriggerEND", GadgetActorProxy)
Q1914804TriggerEND.defaultAlias = "Q1914804TriggerEND"
local Q19148ClientConfig = require("Quest/Client/Q19148ClientConfig")

local subIDs = Q19148ClientConfig.SubIDs
local npcs = Q19148ClientConfig.Npcs
local datas = Q19148ClientConfig.Datas

function Q1914804TriggerEND:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914804TriggerEND:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914804TriggerEND:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1914804)
    self:DestroySelf()
end

function Q1914804TriggerEND:TriggerOut()
    print("TriggerOut")
end

return Q1914804TriggerEND

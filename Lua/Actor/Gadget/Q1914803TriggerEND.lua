require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914803TriggerEND = class("Q1914803TriggerEND", GadgetActorProxy)
Q1914803TriggerEND.defaultAlias = "Q1914803TriggerEND"
local Q19148ClientConfig = require("Quest/Client/Q19148ClientConfig")

local subIDs = Q19148ClientConfig.SubIDs
local npcs = Q19148ClientConfig.Npcs
local datas = Q19148ClientConfig.Datas

function Q1914803TriggerEND:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914803TriggerEND:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914803TriggerEND:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1914803)
    actorMgr:GetActor("19148"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 19148)
    self:DestroySelf()
end

function Q1914803TriggerEND:TriggerOut()
    print("TriggerOut")
end

return Q1914803TriggerEND

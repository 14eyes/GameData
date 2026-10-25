require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19001TriggerBaebarar01 = class("Q19001TriggerBaebarar01", GadgetActorProxy)
Q19001TriggerBaebarar01.defaultAlias = "Q19001TriggerBaebarar01"
local Q19001ClientConfig = require("Quest/Client/Q19001ClientConfig")

local mainID = Q19001ClientConfig.MainID
local actorAlias = Q19001ClientConfig.ActorAlias
local subIDs = Q19001ClientConfig.SubIDs
local npcs = Q19001ClientConfig.Npcs
local datas = Q19001ClientConfig.Datas

function Q19001TriggerBaebarar01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19001TriggerBaebarar01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19001TriggerBaebarar01:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1900102)
    self:DestroySelf()
end

function Q19001TriggerBaebarar01:TriggerOut()
    print("TriggerOut")
end

return Q19001TriggerBaebarar01

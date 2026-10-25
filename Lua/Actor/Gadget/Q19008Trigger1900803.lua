require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19008Trigger1900803 = class("Q19008Trigger1900803", GadgetActorProxy)
Q19008Trigger1900803.defaultAlias = "Q19008Trigger1900803"
local Q19008ClientConfig = require("Quest/Client/Q19008ClientConfig")

local mainID = Q19008ClientConfig.MainID
local actorAlias = Q19008ClientConfig.ActorAlias
local subIDs = Q19008ClientConfig.SubIDs
local npcs = Q19008ClientConfig.Npcs
local datas = Q19008ClientConfig.Datas

function Q19008Trigger1900803:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19008Trigger1900803:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19008Trigger1900803:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1900803)
    self:DestroySelf()
end

function Q19008Trigger1900803:TriggerOut()
    print("TriggerOut")
end

return Q19008Trigger1900803
